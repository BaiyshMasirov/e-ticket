import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:eticket/common/models/models.dart';

mixin NetworkRemoteRepositoryMixin {
  Future<Either<RequestFailure, T>> handleRemoteRequest<T>({
    required Future<RemoteResponse<T>> Function() request,
    Function()? whenNotModified,
    Function()? whenNoConnection,
    Function(ErrorResponse)? whenBadRequest,
    Function(ErrorResponse)? whenNotFound,
    Function(ErrorResponse)? whenMethodNotAllowed,
    Function(ErrorResponse)? whenTooManyRequest,
    Function()? whenInternalServerError,
    Function()? whenServiceUnavailable,
    Function()? whenUnknownError,
  }) async {
    final result = await request();

    try {
      return result.when(
        data: (result) => right(result),
        created: () => left(
          const RequestFailure.created(
              HttpStatus.created, 'successfully_created'),
        ),
        notModified: () => left(
          whenNotModified?.call() ??
              const RequestFailure.notModified(
                HttpStatus.notModified,
                'content_not_changed',
              ),
        ),
        connectionTimeout: () => left(
          const RequestFailure.connectionTimeout(
            null,
            'server_connection_timeout',
          ),
        ),
        noConnection: () => left(
          whenNoConnection?.call() ??
              const RequestFailure.noConnection(
                null,
                'internet_connection_missing',
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
            whenBadRequest?.call(errorResponse) ??
                RequestFailure.badRequest(
                  errorResponse.statusCode,
                  errorResponse.message,
                ),
          );
        },
        notFound: (errorResponse) {
          return left(
            whenNotFound?.call(errorResponse) ??
                RequestFailure.notFound(
                  errorResponse.statusCode,
                  errorResponse.message,
                ),
          );
        },
        methodNotAllowed: (errorResponse) {
          return left(
            whenMethodNotAllowed?.call(errorResponse) ??
                RequestFailure.methodNotAllowed(
                  errorResponse.statusCode,
                  errorResponse.message,
                ),
          );
        },
        tooManyRequest: (errorResponse) => left(
          whenTooManyRequest?.call(errorResponse) ??
              RequestFailure.tooManyRequest(
                errorResponse.statusCode,
                errorResponse.message,
              ),
        ),
        forbidden: () => left(
          const RequestFailure.forbidden(
            HttpStatus.forbidden,
            'access_denied',
          ),
        ),
        unAuthorized: () => left(
          const RequestFailure.unAuthorized(
            HttpStatus.unauthorized,
            'auth_to_use_app',
          ),
        ),
        internalServerError: () => left(
          whenInternalServerError?.call() ??
              const RequestFailure.internalServerError(
                HttpStatus.internalServerError,
                'server_error',
              ),
        ),
        serviceUnavailable: () => left(
          whenServiceUnavailable?.call() ??
              const RequestFailure.serviceUnavailable(
                HttpStatus.serviceUnavailable,
                'server_not_available',
              ),
        ),
        unknownError: () => left(
          whenUnknownError?.call() ??
              const RequestFailure.unknownError(
                null,
                'unknown_error',
              ),
        ),
        statusNotHandled: (errorResponse) => left(
          RequestFailure.statusNotHandled(
            errorResponse.statusCode,
            errorResponse.message,
          ),
        ),
      );
    } catch (e) {
      return left(const RequestFailure.unknownError(
        null,
        'request_handle_error',
      ));
    }
  }
}
