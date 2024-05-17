import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/utils/utils.dart';

extension DioErrorX on DioException {
  bool get isNoConnectionException =>
      type == DioExceptionType.connectionError || error is SocketException;

  bool get isConnectionTimeoutException =>
      type == DioExceptionType.connectionTimeout ||
      type == DioExceptionType.receiveTimeout ||
      type == DioExceptionType.sendTimeout;
}

extension ResponseX on Response {
  bool get isSuccess => statusCode != null ? statusCode! ~/ 100 == 2 : false;
}

extension DioX on Dio {
  Duration get fileUploadTimeout => const Duration(seconds: 60);

  static Dio setupServer(String serverUrl, Interceptor authInterceptor) {
    return Dio()
      ..options = BaseOptions(
        baseUrl: serverUrl,
        contentType: HttpConstants.jsonContentType,
        validateStatus: (status) => status != null,
        connectTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 10),
      )
      ..interceptors.addAll([
        authInterceptor,
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      ]);
  }

  static Dio setupAuth(String serverUrl) {
    return Dio()
      ..options = BaseOptions(
        baseUrl: serverUrl,
        contentType: HttpConstants.jsonContentType,
      )
      ..interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
  }

  static Future<FormData> buildMultiPartWithMultipleFile({
    required List<String> filePaths,
    required String fileFieldKey,
    Json? json,
  }) async {
    final mapData = <String, dynamic>{};
    if (json != null) {
      mapData.addAll(json);
    }

    final fileMapData = <MapEntry<String, MultipartFile>>[];
    for (final path in filePaths) {
      final fileMap = MapEntry(
        fileFieldKey,
        await MultipartFile.fromFile(
          path,
          filename: path.split('/').last,
        ),
      );

      fileMapData.add(fileMap);
    }

    final formData = FormData.fromMap(mapData);
    formData.files.addAll(fileMapData);

    return formData;
  }

  static Future<FormData> buildMultiPart({
    required String? filePath,
    required String fileFieldKey,
    Json? json,
  }) async {
    final mapData = <String, dynamic>{};
    if (json != null) {
      mapData.addAll(json);
    }

    if (filePath != null) {
      mapData.addAll({
        fileFieldKey: await MultipartFile.fromFile(
          filePath,
          filename: filePath.split('/').last,
        ),
      });
    }

    final formData = FormData.fromMap(mapData);

    return formData;
  }

  Future<RemoteResponse<T>> makeRequest<T>({
    required Future<Response> Function() request,
    required T Function(dynamic json) parse,
  }) async {
    try {
      final response = await request();

      if (!response.isSuccess) {
        Logger.recordError(
          exception: response,
          reason: response.statusCode,
        );
      }

      if (response.isSuccess && response.statusCode == HttpStatus.ok) {
        try {
          final data = parse(response.data);

          return RemoteResponse.dataWithHeaders(ResponseData(
            data: data,
            headers: response.headers,
          ));
        } catch (e, st) {
          log(e.toString());

          Logger.recordError(
            exception: e,
            stackTrace: st,
            reason: e.toString(),
          );

          return const RemoteResponse.parsingError();
        }
      }

      if (response.statusCode == HttpStatus.created) {
        return const RemoteResponse.created();
      } else if (response.statusCode == HttpStatus.notModified) {
        return const RemoteResponse.notModified();
      } else if (response.statusCode == HttpStatus.unauthorized) {
        return const RemoteResponse.unAuthorized();
      } else {
        final errorResponse = ErrorResponse.fromResponse(response: response);

        switch (response.statusCode) {
          case HttpStatus.badRequest:
            return RemoteResponse.badRequest(errorResponse);
          case HttpStatus.forbidden:
            return RemoteResponse.forbidden(errorResponse);
          case HttpStatus.notFound:
            return RemoteResponse.notFound(errorResponse);
          case HttpStatus.methodNotAllowed:
            return RemoteResponse.methodNotAllowed(errorResponse);
          case HttpStatus.requestEntityTooLarge:
            return RemoteResponse.contentTooLarge(errorResponse);
          case HttpStatus.tooManyRequests:
            return RemoteResponse.tooManyRequest(errorResponse);
          case HttpStatus.conflict:
            return RemoteResponse.conflict(errorResponse);
          case HttpStatus.locked:
            return RemoteResponse.locked(errorResponse);
          case HttpStatus.upgradeRequired:
            return RemoteResponse.upgradeRequired(errorResponse);
          case HttpStatus.internalServerError:
            return const RemoteResponse.internalServerError();
          case HttpStatus.notImplemented:
            return const RemoteResponse.internalServerError();
          case HttpStatus.badGateway:
            return const RemoteResponse.internalServerError();
          case HttpStatus.serviceUnavailable:
            return const RemoteResponse.serviceUnavailable();
        }

        return RemoteResponse.statusNotHandled(
          ErrorResponse.fromResponse(response: response),
        );
      }
    } on DioException catch (e) {
      if (e.isNoConnectionException) {
        Logger.recordError(
          exception: e,
          stackTrace: e.stackTrace,
          reason: LocaleKeys.no_internet_connection.tr(),
        );

        return const RemoteResponse.noConnection();
      } else if (e.isConnectionTimeoutException) {
        Logger.recordError(
          exception: e,
          stackTrace: e.stackTrace,
          reason: 'TimeoutException: ${e.message}',
        );

        return const RemoteResponse.connectionTimeout();
      } else {
        Logger.recordError(
          exception: e,
          stackTrace: e.stackTrace,
          reason: e.message,
        );

        return const RemoteResponse.unknownError();
      }
    } catch (e, st) {
      Logger.recordError(
        exception: e,
        stackTrace: st,
        reason: 'Unknown error',
      );

      return const RemoteResponse.unknownError();
    }
  }
}
