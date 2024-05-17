import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum EventStatus {
  /// - Не выбран
  @JsonValue(0)
  none(0),

  /// - Ожидается
  @JsonValue(1)
  inAwait(1),

  /// - Ожидает добавления билетов
  @JsonValue(2)
  inProcess(2),

  /// - Активный
  @JsonValue(3)
  active(3),

  /// - Не активный
  @JsonValue(4)
  inActive(4),

  unknown(-1);

  const EventStatus(this.value);

  final int value;

  static List<EventStatus> typesForFilter =
      EventStatus.values.where((e) => e != EventStatus.unknown).toList();
}

extension EventStatusX on EventStatus {
  String get localizedName {
    switch (this) {
      case EventStatus.none:
        return LocaleKeys.none.tr();
      case EventStatus.inAwait:
        return LocaleKeys.in_await.tr();
      case EventStatus.inProcess:
        return LocaleKeys.in_process_adding_tickets.tr();
      case EventStatus.active:
        return LocaleKeys.active.tr();
      case EventStatus.inActive:
        return LocaleKeys.in_active;
      default:
        return '-';
    }
  }
}
