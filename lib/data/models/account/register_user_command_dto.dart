import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_command_dto.freezed.dart';
part 'register_user_command_dto.g.dart';

@freezed
class RegisterUserCommandDto with _$RegisterUserCommandDto {
  const RegisterUserCommandDto._();
  const factory RegisterUserCommandDto({
    required String? email,
    required String? firstName,
    required String? lastName,
    required String? middleName,
    required String? password,
    required String? phoneNumber,
  }) = _RegisterUserCommandDto;

  factory RegisterUserCommandDto.fromJson(Json json) =>
      _$RegisterUserCommandDtoFromJson(json);
}
