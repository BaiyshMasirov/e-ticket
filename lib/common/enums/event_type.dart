import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum EventType {
  @JsonValue(0)
  none(0),

  @JsonValue(1)
  concert(1),

  @JsonValue(2)
  tourism(2),

  @JsonValue(3)
  sport(3),

  @JsonValue(4)
  cinema(4),

  @JsonValue(5)
  business(5),

  @JsonValue(6)
  museum(6),

  @JsonValue(7)
  theater(7),

  unknown(-1),
  ;

  final int value;

  const EventType(this.value);

  static List<EventType> typesForScreen = EventType.values
      .where((e) => e != EventType.none && e != EventType.unknown)
      .toList();

  static List<EventType> typesForFilter =
      EventType.values.where((e) => e != EventType.unknown).toList();
}

extension EventTypeX on EventType {
  String get localizedName {
    switch (this) {
      case EventType.concert:
        return LocaleKeys.concert.tr();
      case EventType.tourism:
        return LocaleKeys.tourism.tr();
      case EventType.sport:
        return LocaleKeys.sport.tr();
      case EventType.cinema:
        return LocaleKeys.cinema.tr();
      case EventType.business:
        return LocaleKeys.business.tr();
      case EventType.museum:
        return LocaleKeys.museum.tr();
      case EventType.theater:
        return LocaleKeys.theater.tr();
      case EventType.none:
        return LocaleKeys.none.tr();
      default:
        return '-';
    }
  }
}
