import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio _dio;
  final AuthRepository _authRepository;
  final AuthCubit _authCubit;
  final Configuration _configuration;
  final AppSettingsRepository _appSettingsRepository;

  AuthInterceptor(
    Dio dio,
    AuthRepository authRepository,
    AuthCubit authCubit,
    Configuration configuration,
    AppSettingsRepository appSettingsRepository,
  )   : _dio = dio,
        _authRepository = authRepository,
        _authCubit = authCubit,
        _configuration = configuration,
        _appSettingsRepository = appSettingsRepository;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final credentials = await _authRepository.getSignedInCredentials();
    final modifiedOptions = options
      ..headers.addAll(credentials == null
          ? {}
          : {
              HttpHeaders.authorizationHeader:
                  'Bearer ${credentials.accessToken}',
              HttpConstants.appVersion: _configuration.appVersion,
              HttpConstants.appBuildNumber: _configuration.appBuildNumber,
              HttpHeaders.acceptLanguageHeader:
                  _appSettingsRepository.getAppSettings().locale,
            });

    handler.next(modifiedOptions);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == HttpStatus.unauthorized) {
      final credentials = await _authRepository.getSignedInCredentials();

      if (credentials != null && credentials.canRefresh) {
        final result = await _authRepository.refreshToken(credentials);

        result.fold(
          (failure) async {
            await _authRepository.clearCredentialsStorage();
          },
          (r) => null,
        );
      } else {
        await _authRepository.clearCredentialsStorage();
      }

      await _authCubit.checkAndUpdateAuthStatus();

      final refreshedCredentials =
          await _authRepository.getSignedInCredentials();

      if (refreshedCredentials != null) {
        handler.resolve(
          await _dio.fetch(
            response.requestOptions
              ..headers[HttpHeaders.authorizationHeader] =
                  'Bearer ${refreshedCredentials.accessToken}',
          ),
        );
      } else {
        handler.next(response);
      }
    } else {
      handler.next(response);
    }
  }
}
