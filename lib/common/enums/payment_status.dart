import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentStatus {
  @JsonValue(1)
  inAwait(value: 1),

  @JsonValue(2)
  error(value: 2),

  @JsonValue(3)
  canceled(value: 3),

  @JsonValue(4)
  payed(value: 4),
  ;

  const PaymentStatus({required this.value});

  final int value;
}

extension PaymentStatusX on PaymentStatus {
  String get name {
    switch (this) {
      case PaymentStatus.inAwait:
        return LocaleKeys.in_await_payment.tr();
      case PaymentStatus.error:
        return LocaleKeys.error.tr();
      case PaymentStatus.canceled:
        return LocaleKeys.canceled.tr();
      case PaymentStatus.payed:
        return LocaleKeys.paid.tr();
    }
  }
}
