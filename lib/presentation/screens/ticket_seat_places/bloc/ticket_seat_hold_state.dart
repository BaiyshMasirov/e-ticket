import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/data/models/models.dart';

part 'ticket_seat_hold_state.freezed.dart';

@freezed
class TicketSeatHoldState with _$TicketSeatHoldState {
  const TicketSeatHoldState._();

  const factory TicketSeatHoldState.data({
    required List<TicketDto> tickets,
  }) = _TicketSeatHoldDataState;

  const factory TicketSeatHoldState.holding({
    required List<TicketDto> tickets,
  }) = TicketSeatHoldingState;

  const factory TicketSeatHoldState.holdSuccess({
    required List<TicketDto> tickets,
    required double totalSum,
    required String bookingId,
  }) = _TicketSeatHoldSuccessState;

  const factory TicketSeatHoldState.holdError({
    required List<TicketDto> tickets,
  }) = _TicketSeatHoldErrorState;
}
