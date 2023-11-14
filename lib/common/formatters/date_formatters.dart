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

  static String buildEventDateTime({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    if (startDate == endDate) {
      return DateFormatters.datetimeToSlashed(startDate);
    }

    return '${DateFormatters.datetimeToSlashed(startDate)} - ${DateFormatters.datetimeToSlashed(endDate)}';
  }
}
