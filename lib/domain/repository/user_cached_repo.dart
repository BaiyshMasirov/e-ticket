import 'package:eticket/data/data.dart';

class UserCachedRepo {
  final UserLocalSource _userLocalSource;

  UserCachedRepo({
    required UserLocalSource userLocalSource,
  }) : _userLocalSource = userLocalSource;

  UserLoginCreds getData() {
    return _userLocalSource.read();
  }

  Future<void> setUserAuthDataData({
    required String login,
    required String password,
  }) async {
    await _userLocalSource.setUserAuthData(
      login: login,
      password: password,
    );
  }

  Future<void> setRememberMe({
    required bool isRememberMe,
  }) async {
    await _userLocalSource.setRememberMe(
      isRememberMe: isRememberMe,
    );
  }

  Future<void> clear() async {
    await _userLocalSource.clear();
  }
}
