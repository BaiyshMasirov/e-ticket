import 'dart:convert';

import 'package:authentication/src/models/models.dart';
import 'package:common/common.dart';

const _userCredentialStorageKey = 'userCredentialStorageKey';

class AuthLocalDatasource {
  final FlutterSecureStorage _storage;

  UserCredentials? _cashedUserCredentials;

  AuthLocalDatasource({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  Future<UserCredentials?> read() async {
    if (_cashedUserCredentials != null) {
      return _cashedUserCredentials;
    }

    final json = await _storage.read(key: _userCredentialStorageKey);
    if (json == null) {
      return null;
    }

    try {
      _cashedUserCredentials = UserCredentials.fromJson(jsonDecode(json));
      return _cashedUserCredentials;
    } catch (e) {
      return null;
    }
  }

  Future<void> save(UserCredentials userCredentials) async {
    _cashedUserCredentials = userCredentials;
    await _storage.write(
      key: _userCredentialStorageKey,
      value: jsonEncode(userCredentials.toJson()),
    );
  }

  Future<void> clear() async {
    _cashedUserCredentials = null;
    await _storage.delete(key: _userCredentialStorageKey);
  }
}
