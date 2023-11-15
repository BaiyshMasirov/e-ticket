import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_purchase.freezed.dart';

@freezed
class TicketPurchase with _$TicketPurchase {
  const TicketPurchase._();

  const factory TicketPurchase({
    required String id,
    required double price,
    required String label,
  }) = _TicketPurchase;
}
