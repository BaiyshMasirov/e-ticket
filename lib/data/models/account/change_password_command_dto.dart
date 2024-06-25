import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_command_dto.freezed.dart';
part 'change_password_command_dto.g.dart';

@freezed
class ChangePasswordCommandDto with _$ChangePasswordCommandDto {
  const ChangePasswordCommandDto._();
  const factory ChangePasswordCommandDto({
    required String? email,
    required String? phoneNumber,
    required String? password,
    required String? confirmPassword,
  }) = _ChangePasswordCommandDto;

  factory ChangePasswordCommandDto.fromJson(Json json) =>
      _$ChangePasswordCommandDtoFromJson(json);
}
