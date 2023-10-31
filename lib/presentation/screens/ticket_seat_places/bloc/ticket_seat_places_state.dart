import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/models/models.dart';

part 'ticket_seat_places_state.freezed.dart';

@freezed
class TicketSeatPlacesState with _$TicketSeatPlacesState {
  const TicketSeatPlacesState._();
  const factory TicketSeatPlacesState.initial() = _TicketSeatPlacesStateInitial;
  const factory TicketSeatPlacesState.loading() = TicketSeatPlacesStateLoading;
  const factory TicketSeatPlacesState.data({
    required List<TicketDto> tickets,
  }) = _TicketSeatPlacesStateData;
  const factory TicketSeatPlacesState.error({
    required String? errorMessage,
  }) = _TicketSeatPlacesStateError;
}
