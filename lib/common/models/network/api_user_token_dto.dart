import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user_token_dto.freezed.dart';
part 'api_user_token_dto.g.dart';

@freezed
class ApiUserTokenDto with _$ApiUserTokenDto {
  const ApiUserTokenDto._();

  const factory ApiUserTokenDto({
    required String jwtToken,
    required String rtToken,
  }) = _ApiUserTokenDto;

  factory ApiUserTokenDto.fromJson(Json json) =>
      _$ApiUserTokenDtoFromJson(json);
}
