import 'package:freezed_annotation/freezed_annotation.dart';

enum TicketSeatingType {
  @JsonValue(0)
  none,

  @JsonValue(1)
  noSeating,

  @JsonValue(2)
  seating,

  unknown,
}
