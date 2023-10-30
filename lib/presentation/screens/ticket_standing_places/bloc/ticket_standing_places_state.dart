import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/models/models.dart';

part 'ticket_standing_places_state.freezed.dart';

@freezed
class TicketStandingPlacesState with _$TicketStandingPlacesState {
  const TicketStandingPlacesState._();
  const factory TicketStandingPlacesState.initial() =
      _TicketStandingPlacesStateInitial;
  const factory TicketStandingPlacesState.loading() =
      TicketStandingPlacesStateLoading;
  const factory TicketStandingPlacesState.success({
    required List<TicketTypeCountDto> tickets,
  }) = _TicketStandingPlacesStateSuccess;
  const factory TicketStandingPlacesState.error({
    String? errorMessage,
  }) = _TicketStandingPlacesStateError;
}
