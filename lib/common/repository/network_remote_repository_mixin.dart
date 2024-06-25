import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/models/models.dart';
import 'package:eticket/generated/locale_keys.g.dart';

mixin NetworkRemoteRepositoryMixin {
  Future<Either<RequestFailure, T>> handleRemoteRequest<T>({
    required Future<RemoteResponse<T>> Function() request,
  }) async {
    final result = await handleRemoteRequestWithHeaders(
      request: request,
    );

    return result.fold(
      (l) => left(l),
      (r) => right(r.data),
    );
  }

  Future<Either<RequestFailure, ResponseData<T>>>
      handleRemoteRequestWithHeaders<T>({
    required Future<RemoteResponse<T>> Function() request,
  }) async {
    final result = await request();

    try {
      return result.when(
        dataWithHeaders: (data) => right(data),
        created: () => left(
          RequestFailure.created(
            HttpStatus.created,
            LocaleKeys.successfully_created.tr(),
          ),
        ),
        notModified: () => left(
          RequestFailure.notModified(
            HttpStatus.notModified,
            LocaleKeys.content_not_changed.tr(),
          ),
        ),
        connectionTimeout: () => left(
          RequestFailure.connectionTimeout(
            null,
            LocaleKeys.server_connection_timeout.tr(),
          ),
        ),
        noConnection: () => left(
          RequestFailure.noConnection(
            null,
            LocaleKeys.internet_connection_missing.tr(),
          ),
        ),
        contentTooLarge: (errorResponse) => left(
          RequestFailure.contentTooLarge(
            errorResponse.statusCode,
            errorResponse.message,
          ),
        ),
        badRequest: (errorResponse) {
          return left(
            RequestFailure.unAuthorized(
              errorResponse.statusCode,
              errorResponse.message,
            ),
          );
        },
        notFound: (errorResponse) {
          return left(
            RequestFailure.notFound(
              errorResponse.statusCode,
              errorResponse.message,
            ),
          );
        },
        methodNotAllowed: (errorResponse) {
          return left(
            RequestFailure.methodNotAllowed(
              errorResponse.statusCode,
              errorResponse.message,
            ),
          );
        },
        tooManyRequest: (errorResponse) => left(
          RequestFailure.tooManyRequest(
            errorResponse.statusCode,
            errorResponse.message,
          ),
        ),
        forbidden: (errorResponse) => left(
          RequestFailure.forbidden(
            HttpStatus.forbidden,
            errorResponse.message ?? LocaleKeys.access_denied.tr(),
          ),
        ),
        unAuthorized: () => left(
          RequestFailure.unAuthorized(
            HttpStatus.unauthorized,
            LocaleKeys.auth_to_use_app.tr(),
          ),
        ),
        conflict: (errorResponse) => left(
          RequestFailure.conflict(
            errorResponse.statusCode,
            errorResponse.message,
          ),
        ),
        locked: (errorResponse) => left(
          RequestFailure.locked(
            errorResponse.statusCode,
            errorResponse.message ?? LocaleKeys.access_locked.tr(),
          ),
        ),
        upgradeRequired: (errorResponse) => left(
          RequestFailure.upgradeRequired(
            errorResponse.statusCode,
            errorResponse.message ?? LocaleKeys.upgrade_required.tr(),
          ),
        ),
        internalServerError: () => left(
          RequestFailure.internalServerError(
            HttpStatus.internalServerError,
            LocaleKeys.server_error.tr(),
          ),
        ),
        serviceUnavailable: () => left(
          RequestFailure.serviceUnavailable(
            HttpStatus.serviceUnavailable,
            LocaleKeys.server_not_available.tr(),
          ),
        ),
        unknownError: () => left(
          RequestFailure.unknownError(
            null,
            LocaleKeys.unknown_error.tr(),
          ),
        ),
        statusNotHandled: (errorResponse) => left(
          RequestFailure.statusNotHandled(
            errorResponse.statusCode,
            errorResponse.message,
          ),
        ),
        parsingError: () => left(
          RequestFailure.parsingError(
            null,
            LocaleKeys.response_handle_error.tr(),
          ),
        ),
      );
    } catch (e) {
      return left(
        RequestFailure.unknownError(
          null,
          LocaleKeys.unknown_error.tr(),
        ),
      );
    }
  }
}
