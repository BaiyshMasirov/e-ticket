import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:eticket/data/models/models.dart';

const String _storageSettingsKey = '_storageUserLoginKey';

class UserLocalSource {
  final SharedPreferences _sharedPreferences;
  late UserLoginCreds _userLoginStorage;

  UserLocalSource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences {
    read();
  }

  /// storage initializer (call before other methods)
  UserLoginCreds read() {
    final storageSettingsString =
    _sharedPreferences.getString(_storageSettingsKey);

    if (storageSettingsString == null) {
      _userLoginStorage = const UserLoginCreds();
      return _userLoginStorage;
    }

    try {
      _userLoginStorage = UserLoginCreds.fromJson(
        jsonDecode(storageSettingsString),
      );
    } catch (e) {
      _userLoginStorage = const UserLoginCreds();
    }

    return _userLoginStorage;
  }

  Future<void> _save() async {
    await _sharedPreferences.setString(
      _storageSettingsKey,
      jsonEncode(_userLoginStorage.toJson()),
    );
  }

  Future<void> clear() async {
    _userLoginStorage = const UserLoginCreds();
    await _save();
  }

  Future<void> setRememberMe({
    required bool isRememberMe,
  }) async {
    _userLoginStorage = _userLoginStorage.copyWith(
      isRememberMe: isRememberMe,
    );

    await _save();
  }

  Future<void> setUserAuthData({
    required String login,
    required String password,
  }) async {
    _userLoginStorage = _userLoginStorage.copyWith(
      login: login,
      password: password,
    );

    await _save();
  }
}
