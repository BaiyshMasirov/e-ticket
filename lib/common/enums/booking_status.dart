import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum BookingStatus {
  @JsonValue(0)
  none(value: 0),

  @JsonValue(1)
  inAwait(value: 1),

  @JsonValue(2)
  inProcess(value: 2),

  @JsonValue(3)
  active(value: 3),

  @JsonValue(4)
  canceled(value: 4),

  unknown(value: -1),
  ;

  const BookingStatus({required this.value});

  final int value;
}

extension BookingStatusX on BookingStatus {
  String get localizedName {
    switch (this) {
      case BookingStatus.none:
        return LocaleKeys.none.tr();
      case BookingStatus.inAwait:
        return LocaleKeys.in_await_payment.tr();
      case BookingStatus.inProcess:
        return LocaleKeys.in_process_payment.tr();
      case BookingStatus.active:
        return LocaleKeys.active.tr();
      case BookingStatus.canceled:
        return LocaleKeys.canceled.tr();
      default:
        return '-';
    }
  }

  Color getColor(BuildContext context) {
    switch (this) {
      case BookingStatus.none:
        return context.appColors.grey;
      case BookingStatus.inAwait:
        return context.appColors.yellow;
      case BookingStatus.inProcess:
        return context.appColors.orange;
      case BookingStatus.active:
        return context.appColors.green;
      case BookingStatus.canceled:
        return context.appColors.red;
      default:
        return context.appColors.grey;
    }
  }
}
