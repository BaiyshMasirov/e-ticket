import 'package:eticket/common/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_response.freezed.dart';

@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();

  //200
  const factory RemoteResponse.dataWithHeaders(
    ResponseData<T> response,
  ) = _DataWithHeaders<T>;

  const factory RemoteResponse.created() = _Created<T>;

  //300
  const factory RemoteResponse.notModified() = _NotModified<T>;

  // auth errors
  const factory RemoteResponse.unAuthorized() = _UnAuthorized<T>;

  const factory RemoteResponse.forbidden(ErrorResponse errorResponse) =
      _Forbidden<T>;

  // 400
  const factory RemoteResponse.contentTooLarge(ErrorResponse errorResponse) =
      _ContentTooLarge<T>;

  const factory RemoteResponse.badRequest(ErrorResponse errorResponse) =
      _BadRequest<T>;

  const factory RemoteResponse.notFound(ErrorResponse errorResponse) =
      _NotFound<T>;

  const factory RemoteResponse.methodNotAllowed(ErrorResponse errorResponse) =
      _MethodNotAllowed<T>;

  const factory RemoteResponse.tooManyRequest(ErrorResponse errorResponse) =
      _TooManyRequest<T>;

  const factory RemoteResponse.conflict(ErrorResponse errorResponse) =
      _Conflict<T>;

  const factory RemoteResponse.locked(ErrorResponse errorResponse) = _Locked<T>;

  const factory RemoteResponse.upgradeRequired(ErrorResponse errorResponse) =
      _UpgradeRequired<T>;

  // 500
  const factory RemoteResponse.internalServerError() = _InternalServerError<T>;

  const factory RemoteResponse.serviceUnavailable() = _ServiceUnavailable<T>;

  const factory RemoteResponse.unknownError() = _UnknownError<T>;
  //
  const factory RemoteResponse.noConnection() = _NoConnection<T>;

  const factory RemoteResponse.connectionTimeout() = _ConnectionTimeout<T>;

  const factory RemoteResponse.statusNotHandled(ErrorResponse response) =
      _StatusNotHandled<T>;

  const factory RemoteResponse.parsingError() = _ParsingError<T>;
}
