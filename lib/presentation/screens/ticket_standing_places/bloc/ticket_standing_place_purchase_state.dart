import 'package:eticket/presentation/screens/ticket_standing_places/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_standing_place_purchase_state.freezed.dart';

@freezed
class TicketStandingPlacePurchaseState with _$TicketStandingPlacePurchaseState {
  const TicketStandingPlacePurchaseState._();

  const factory TicketStandingPlacePurchaseState.data({
    required List<TicketStandingPlacePick> chosenTickets,
  }) = _TicketStandingPlacePurchaseData;
  const factory TicketStandingPlacePurchaseState.purchasing({
    required List<TicketStandingPlacePick> chosenTickets,
  }) = _TicketStandingPlacePurchasePurchasing;
  const factory TicketStandingPlacePurchaseState.purchasingError({
    required List<TicketStandingPlacePick> chosenTickets,
    required String? errorMessage,
  }) = _TicketStandingPlacePurchaseError;
}
