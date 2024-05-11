import 'package:intl/intl.dart';

class DateFormatters {
  static const dMyDashedTemplate = 'dd/MM/yyyy';
  static const dmYHmsDashedTemplate = 'dd/MM/yyyy HH:mm';

  static String? toDateTimeNullable(
    DateTime? dateTime, {
    String pattern = dMyDashedTemplate,
  }) {
    final result =
        dateTime != null ? DateFormat(pattern).format(dateTime) : null;
    return result;
  }

  static String toDateTime(
    DateTime dateTime, {
    String pattern = dMyDashedTemplate,
  }) {
    return DateFormat(pattern).format(dateTime);
  }

  static String buildEventDateTime({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    if (startDate == endDate) {
      return DateFormatters.toDateTime(startDate);
    }

    return '${DateFormatters.toDateTime(startDate)} - ${DateFormatters.toDateTime(endDate)}';
  }
}
