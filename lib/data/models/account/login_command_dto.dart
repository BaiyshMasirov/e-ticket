import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_command_dto.freezed.dart';
part 'login_command_dto.g.dart';

@freezed
class LoginCommandDto with _$LoginCommandDto {
  const LoginCommandDto._();
  const factory LoginCommandDto({
    required String email,
    required String password,
    required String? firebaseToken,
  }) = _LoginCommandDto;

  factory LoginCommandDto.fromJson(Json json) =>
      _$LoginCommandDtoFromJson(json);
}
