import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure with _$RequestFailure {
  const RequestFailure._();

  const factory RequestFailure.noConnection(
    int? errorCode,
    String? errorMessage,
  ) = _NoConnection;
  const factory RequestFailure.badRequest(
    int? errorCode,
    String? errorMessage,
  ) = _BadRequest;
  const factory RequestFailure.notFound(
    int? errorCode,
    String? errorMessage,
  ) = _NotFound;
  const factory RequestFailure.methodNotAllowed(
    int? errorCode,
    String? errorMessage,
  ) = _MethodNotAllowed;
  const factory RequestFailure.tooManyRequest(
    int? errorCode,
    String? errorMessage,
  ) = _TooManyRequest;
  const factory RequestFailure.internalServerError(
    int? errorCode,
    String? errorMessage,
  ) = _InternalServerError;
  const factory RequestFailure.serviceUnavailable(
    int? errorCode,
    String? errorMessage,
  ) = _ServiceUnavailable;
  const factory RequestFailure.unknownError(
    int? errorCode,
    String? errorMessage,
  ) = _UnknownError;
  const factory RequestFailure.statusNotHandled(
    int? errorCode,
    String? errorMessage,
  ) = _StatusNotHandled;
  const factory RequestFailure.created(
    int? errorCode,
    String? errorMessage,
  ) = _Created;
  const factory RequestFailure.notModified(
    int? errorCode,
    String? errorMessage,
  ) = _NotModified;
  const factory RequestFailure.connectionTimeout(
    int? errorCode,
    String? errorMessage,
  ) = _ConnectionTimeout;
  const factory RequestFailure.contentTooLarge(
    int? errorCode,
    String? errorMessage,
  ) = _ContentTooLarge;
  const factory RequestFailure.forbidden(
    int? errorCode,
    String? errorMessage,
  ) = _Forbidden;
  const factory RequestFailure.unAuthorized(
    int? errorCode,
    String? errorMessage,
  ) = _UnAuthorized;
}
