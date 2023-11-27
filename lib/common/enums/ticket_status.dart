import 'package:common/common.dart';

enum TicketStatus {
  @JsonValue(0)
  FREE,
  @JsonValue(1)
  WAITING_PAYMENT,
  @JsonValue(2)
  PAID,
  @JsonValue(3)
  RETURNED,
  @JsonValue(4)
  USED,
  unknown,
}
