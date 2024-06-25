import 'package:eticket/data/data.dart';

class EmailCodeTimerRepository {
  final EmailCodeTimerLocalSource _emailCodeTimerLocalSource;

  EmailCodeTimerRepository({
    required EmailCodeTimerLocalSource emailCodeTimerLocalSource,
  }) : _emailCodeTimerLocalSource = emailCodeTimerLocalSource;

  DateTime? getEmailCodeDateTime() =>
      _emailCodeTimerLocalSource.getEmailCodeDateTime();

  Future<void> saveEmailCodeDateTime({
    required DateTime dateTime,
  }) =>
      _emailCodeTimerLocalSource.saveEmailCodeDateTime(dateTime: dateTime);

  Future<void> clear() => _emailCodeTimerLocalSource.clear();
}
