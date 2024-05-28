import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:intl/intl.dart';

class DateFormatters {
  static const dMyDashedTemplate = 'dd/MM/yyyy';
  static const dMMMSpacedTemplate = 'dd MMM';
  static const hhmmColonTemplate = 'HH:mm';
  static const dmYHmsDashedTemplate = 'dd/MM/yyyy HH:mm';
  static const dMMMYHmsSpacedTemplate = 'dd MMM yyyy HH:mm';

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

  static String buildEventRangeDateTime({
    required List<DateTime> dates,
    String pattern = dmYHmsDashedTemplate,
    Locale locale = Constants.defaultLocale,
  }) {
    if (dates.isEmpty) {
      return '-';
    }

    final onlyDates = dates
        .map((d) => DateTime(
              d.year,
              d.month,
              d.day,
            ))
        .toList();

    final distinctDates = onlyDates.toSet().toList();

    if (distinctDates.length == 1) {
      return DateFormatters.toDateTime(
        onlyDates.first,
        pattern: pattern,
        locale: locale,
      );
    }

    distinctDates.sort();

    return '${DateFormatters.toDateTime(
      distinctDates.first,
      pattern: pattern,
      locale: locale,
    )} - ${DateFormatters.toDateTime(
      distinctDates.last,
      pattern: pattern,
      locale: locale,
    )}';
  }
}
