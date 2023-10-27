import 'package:easy_localization/easy_localization.dart';

String formatDate(String date) {
  if (date != '' && date != " ") {
    final dateTime = DateTime.parse(date);
    return DateFormat('dd-MM-yyyy').format(dateTime);
  } else {
    return '';
  }
}

extension DateTimeX on DateTime {
  String get formatDateTime {
    return DateFormat('dd-MM-yyyy').format(this);
  }

  String get formatDateTimeYear {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String get formatDateYaer {
    return DateFormat('yyyy').format(this);
  }
}
