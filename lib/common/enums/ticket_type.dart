import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum TicketType {
  @JsonValue(0)
  simple(0),

  @JsonValue(1)
  comfort(1),

  @JsonValue(2)
  vip(2),

  unknown(-1),
  ;

  final int value;

  const TicketType(this.value);
}

extension TicketTypeX on TicketType {
  String get localizedName {
    switch (this) {
      case TicketType.simple:
        return LocaleKeys.simple.tr();
      case TicketType.comfort:
        return LocaleKeys.comfort.tr();
      case TicketType.vip:
        return LocaleKeys.vip.tr();
      default:
        return '-';
    }
  }
}
