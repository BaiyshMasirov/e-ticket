import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_command_dto.freezed.dart';
part 'refresh_token_command_dto.g.dart';

@freezed
class RefreshTokenCommandDto with _$RefreshTokenCommandDto {
  const RefreshTokenCommandDto._();
  const factory RefreshTokenCommandDto({
    required String token,
  }) = _RefreshTokenCommandDto;

  factory RefreshTokenCommandDto.fromJson(Json json) =>
      _$RefreshTokenCommandDtoFromJson(json);
}
