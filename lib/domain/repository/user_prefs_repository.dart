import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';

class UserPrefsRepository {
  final UserPrefsLocalSource _userLocalSource;

  UserPrefsRepository({
    required UserPrefsLocalSource userLocalSource,
  }) : _userLocalSource = userLocalSource;

  UserPreference getUserPrefs() {
    return _userLocalSource.getUserPreference();
  }

  Future<void> setOnboardingShown({
    required bool isShown,
  }) async {
    await _userLocalSource.setOnboardingShown(isShown: isShown);
  }

  Future<void> setPrivacyPolicyAccepted({
    required bool isAccepted,
  }) async {
    await _userLocalSource.setPrivacyPolicyAccepted(isAccepted: isAccepted);
  }

  Future<void> setPinCode({
    required String pinCode,
  }) async {
    await _userLocalSource.setPinCode(pinCode: pinCode);
  }

  String getPinCode() {
    return _userLocalSource.getPinCode();
  }

  Future<void> needToSetPinCode({
    required bool needToSetPinCode,
  }) async {
    await _userLocalSource.needToSetPinCode(needToSetPinCode: needToSetPinCode);
  }

  Future<void> clear() async {
    await _userLocalSource.clear();
  }
}
