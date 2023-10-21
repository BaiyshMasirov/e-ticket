import 'package:common/common.dart';

enum EventStatus {
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
  UNKNOWN,
}

extension EventStatusX on EventStatus {
  Object toJson() {
    return _$EventStatusEnumMap[this]!;
  }
}

const _$EventStatusEnumMap = {
  EventStatus.WTF0: 0,
  EventStatus.WTF1: 1,
  EventStatus.WTF2: 2,
  EventStatus.WTF3: 3,
  EventStatus.WTF4: 4,
  EventStatus.UNKNOWN: 'UNKNOWN',
};
