import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum TicketStatus {
  @JsonValue(0)
  free(value: 0),

  @JsonValue(1)
  inProcess(value: 1),

  @JsonValue(2)
  payed(value: 2),

  @JsonValue(3)
  returned(value: 3),

  @JsonValue(4)
  used(value: 4),

  unknown(value: -1);

  final int value;

  const TicketStatus({required this.value});
}

extension TicketStatusX on TicketStatus {
  String get localizedName {
    switch (this) {
      case TicketStatus.free:
        return LocaleKeys.free.tr();
      case TicketStatus.inProcess:
        return LocaleKeys.waiting_payment.tr();
      case TicketStatus.payed:
        return LocaleKeys.paid.tr();
      case TicketStatus.returned:
        return LocaleKeys.returned.tr();
      case TicketStatus.used:
        return LocaleKeys.used.tr();
      default:
        return '-';
    }
  }
}
