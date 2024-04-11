import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
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

  List<String> getTicketsInfo() {
    final ticketsTemp = [...tickets];
    final groupedTickets = <int, List<TicketDto>>{};

    for (final tick in ticketsTemp) {
      if (groupedTickets.containsKey(tick.rowNumber)) {
        groupedTickets[tick.rowNumber]?.add(tick);
      } else {
        groupedTickets[tick.rowNumber] = [tick];
      }
    }

    final groupRowLabels = groupedTickets.entries.map((entry) {
      var rowNumber = entry.key;
      var ticketPlaceNumbers =
          entry.value.map((tick) => tick.placeNumber).join(', ');
      return '${LocaleKeys.rowNumber.tr()} $rowNumber: $ticketPlaceNumbers';
    }).toList();

    return groupRowLabels;
  }
}
