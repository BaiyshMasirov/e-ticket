import 'dart:convert';

import 'package:eticket/common/common.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _userPrefsLocalSource = '_userPrefsLocalSource';

class UserPrefsLocalSource {
  final SharedPreferences _sharedPreferences;
  late UserPreference _userPreference;

  UserPrefsLocalSource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences {
    read();
  }

  /// storage initializer (call before other methods)
  Future<void> read() async {
    final userPrefsString = _sharedPreferences.getString(_userPrefsLocalSource);

    if (userPrefsString == null) {
      _userPreference = const UserPreference();

      return;
    }

    try {
      _userPreference = UserPreference.fromJson(
        jsonDecode(userPrefsString),
      );
    } catch (e) {
      _userPreference = const UserPreference();
    }
  }

  Future<void> _save() async {
    await _sharedPreferences.setString(
      _userPrefsLocalSource,
      jsonEncode(_userPreference.toJson()),
    );
  }

  Future<void> clear() async {
    _userPreference = const UserPreference();

    _sharedPreferences.remove(_userPrefsLocalSource);
  }

  UserPreference getUserPreference() {
    return _userPreference;
  }

  bool isOnboardingShown() {
    return _userPreference.isOnboardingShown;
  }

  bool isPrivacyPolicyAccepted() {
    return _userPreference.isPrivacyPolicyAccepted;
  }

  String getPinCode() {
    return _userPreference.pinCode;
  }

  Future<void> needToSetPinCode({
    required bool needToSetPinCode,
  }) async {
    _userPreference = _userPreference.copyWith(
      needToSetPinCode: needToSetPinCode,
    );

    await _save();
  }

  Future<void> setOnboardingShown({
    required bool isShown,
  }) async {
    _userPreference = _userPreference.copyWith(
      isOnboardingShown: isShown,
    );

    await _save();
  }

  Future<void> setPrivacyPolicyAccepted({
    required bool isAccepted,
  }) async {
    _userPreference = _userPreference.copyWith(
      isPrivacyPolicyAccepted: isAccepted,
    );

    await _save();
  }

  Future<void> setPinCode({
    required String pinCode,
  }) async {
    _userPreference = _userPreference.copyWith(
      pinCode: pinCode,
    );

    await _save();
  }
}
