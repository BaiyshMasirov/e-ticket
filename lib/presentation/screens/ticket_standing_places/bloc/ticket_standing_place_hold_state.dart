import 'package:eticket/presentation/screens/ticket_standing_places/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_standing_place_hold_state.freezed.dart';

@freezed
class TicketStandingPlaceHoldState with _$TicketStandingPlaceHoldState {
  const TicketStandingPlaceHoldState._();

  const factory TicketStandingPlaceHoldState.data({
    required List<TicketStandingPlacePick> chosenTickets,
  }) = _TicketStandingPlaceHoldDataState;

  const factory TicketStandingPlaceHoldState.success({
    required List<TicketStandingPlacePick> chosenTickets,
  }) = _TicketStandingPlaceHoldSuccessState;

  const factory TicketStandingPlaceHoldState.holding({
    required List<TicketStandingPlacePick> chosenTickets,
  }) = TicketStandingPlaceHoldStateHolding;

  const factory TicketStandingPlaceHoldState.holdingError({
    required List<TicketStandingPlacePick> chosenTickets,
    required String? errorMessage,
  }) = _TicketStandingPlaceHoldErrorState;
}
