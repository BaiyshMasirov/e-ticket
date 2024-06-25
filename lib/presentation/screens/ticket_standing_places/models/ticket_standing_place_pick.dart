import 'package:eticket/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_standing_place_pick.freezed.dart';

@freezed
class TicketStandingPlacePick with _$TicketStandingPlacePick {
  const TicketStandingPlacePick._();

  const factory TicketStandingPlacePick({
    /// ticketType = [TicketType]
    required TicketKeyValueModel ticketType,

    /// ticketType = [TicketType]
    required int type,
    required int count,
    required double price,
  }) = _TicketStandingPlacePick;
}
