import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:intl/intl.dart';

class DateFormatters {
  static const dMyDashedTemplate = 'dd/MM/yyyy';
  static const dMMMSpacedTemplate = 'dd MMM';
  static const hhmmColonTemplate = 'HH:mm';
  static const dmYHmsDashedTemplate = 'dd/MM/yyyy HH:mm';

  static String? toDateTimeNullable(
    DateTime? dateTime, {
    String pattern = dMyDashedTemplate,
    Locale locale = Constants.defaultLocale,
  }) {
    final result = dateTime != null
        ? DateFormat(
            pattern,
            locale.languageCode,
          ).format(dateTime)
        : null;
    return result;
  }

  static String toDateTime(
    DateTime dateTime, {
    String pattern = dMyDashedTemplate,
    Locale locale = Constants.defaultLocale,
  }) {
    return DateFormat(pattern, locale.languageCode).format(dateTime);
  }

  static String buildEventDateTime({
    required DateTime startDate,
    required DateTime endDate,
    String pattern = dmYHmsDashedTemplate,
    Locale locale = Constants.defaultLocale,
  }) {
    if (startDate == endDate) {
      return DateFormatters.toDateTime(
        startDate,
        pattern: pattern,
        locale: locale,
      );
    }

    return '${DateFormatters.toDateTime(
      startDate,
      pattern: pattern,
      locale: locale,
    )} - ${DateFormatters.toDateTime(
      endDate,
      pattern: pattern,
      locale: locale,
    )}';
  }
}
