import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_creds.freezed.dart';
part 'user_login_creds.g.dart';

@freezed
class UserLoginCreds with _$UserLoginCreds {
  const UserLoginCreds._();

  const factory UserLoginCreds({
    @Default('') String login,
    @Default('') String password,
    @Default(false) bool isRememberMe,
  }) = _UserLoginCreds;

  factory UserLoginCreds.fromJson(Json json) =>
      _$UserLoginCredsFromJson(json);
}
