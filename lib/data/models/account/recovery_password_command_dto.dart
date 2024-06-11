import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_password_command_dto.freezed.dart';
part 'recovery_password_command_dto.g.dart';

@freezed
class RecoveryPasswordCommandDto with _$RecoveryPasswordCommandDto {
  const RecoveryPasswordCommandDto._();

  const factory RecoveryPasswordCommandDto({
    required String code,
    required String email,
    required String password,
    required String confirmPassword,
  }) = _RecoveryPasswordCommandDto;

  factory RecoveryPasswordCommandDto.fromJson(Json json) =>
      _$RecoveryPasswordCommandDtoFromJson(json);
}
