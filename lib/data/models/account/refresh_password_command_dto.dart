import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_password_command_dto.freezed.dart';
part 'refresh_password_command_dto.g.dart';

@freezed
class RefreshPasswordCommandDto with _$RefreshPasswordCommandDto {
  const RefreshPasswordCommandDto._();
  const factory RefreshPasswordCommandDto({
    required String? email,
    required String? phoneNumber,
    required String? password,
    required String? confirmPassword,
  }) = _RefreshPasswordCommandDto;

  factory RefreshPasswordCommandDto.fromJson(Json json) =>
      _$RefreshPasswordCommandDtoFromJson(json);
}
