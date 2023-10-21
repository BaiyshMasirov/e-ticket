import 'package:common/common.dart';

enum EventType {
  @JsonValue(0)
  WTF0,
  @JsonValue(1)
  WTF1,
  @JsonValue(2)
  WTF2,
  @JsonValue(3)
  WTF3,
  @JsonValue(4)
  WTF4,
  @JsonValue(5)
  WTF5,
  @JsonValue(6)
  WTF6,
  @JsonValue(7)
  WTF7,
  UNKNOWN,
}

extension EventTypeX on EventType {
  Object toJson() {
    return _$EventTypeEnumMap[this]!;
  }
}

const _$EventTypeEnumMap = {
  EventType.WTF0: 0,
  EventType.WTF1: 1,
  EventType.WTF2: 2,
  EventType.WTF3: 3,
  EventType.WTF4: 4,
  EventType.WTF5: 5,
  EventType.WTF6: 6,
  EventType.WTF7: 7,
  EventType.UNKNOWN: 'UNKNOWN',
};
