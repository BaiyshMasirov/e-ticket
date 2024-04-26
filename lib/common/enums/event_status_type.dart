import 'package:common/common.dart';

enum EventStatusType {
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
  inActive(4);

  const EventStatusType(this.value);

  final int value;
}
