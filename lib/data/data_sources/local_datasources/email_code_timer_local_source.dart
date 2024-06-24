import 'package:eticket/common/common.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _emailCodeTimerLocalSource = '_emailCodeTimerLocalSource';

class EmailCodeTimerLocalSource {
  final SharedPreferences _sharedPreferences;

  EmailCodeTimerLocalSource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  DateTime? getEmailCodeDateTime() {
    final emailCodeDateTimeString = _sharedPreferences.getString(
      _emailCodeTimerLocalSource,
    );

    return const DateTimeUTCSerializer().fromJson(emailCodeDateTimeString);
  }

  Future<void> saveEmailCodeDateTime({
    required DateTime dateTime,
  }) async {
    await _sharedPreferences.setString(
      _emailCodeTimerLocalSource,
      const DateTimeUTCSerializer().toJson(dateTime)!,
    );
  }

  Future<void> clear() async {
    await _sharedPreferences.remove(_emailCodeTimerLocalSource);
  }
}
