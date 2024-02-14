import 'package:intl/intl.dart';

class DateFormatters {
  static const dMyDashedTemplate = 'dd/MM/yyyy';

  static String? datetimeToSlashedNullable(DateTime? dateTime) {
    final result = dateTime != null
        ? DateFormat(dMyDashedTemplate).format(dateTime)
        : null;
    return result;
  }

  static String datetimeToSlashed(DateTime dateTime) {
    return DateFormat(dMyDashedTemplate).format(dateTime);
  }
}
