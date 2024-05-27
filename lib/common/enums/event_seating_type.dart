import 'package:freezed_annotation/freezed_annotation.dart';

enum EventSeatingType {
  @JsonValue(0)
  none,

  @JsonValue(1)
  noSeating,

  @JsonValue(2)
  seating,

  @JsonValue(3)
  combo,

  unknown,
  ;

  static bool hasAvailableSeatingType(EventSeatingType type) {
    return type == EventSeatingType.noSeating ||
        type == EventSeatingType.seating ||
        type == EventSeatingType.combo;
  }
}
