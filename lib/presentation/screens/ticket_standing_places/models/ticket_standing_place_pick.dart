import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_standing_place_pick.freezed.dart';

@freezed
class TicketStandingPlacePick with _$TicketStandingPlacePick {
  const TicketStandingPlacePick._();
  const factory TicketStandingPlacePick({
    required int type,
    required int count,
  }) = _TicketStandingPlacePick;
}
