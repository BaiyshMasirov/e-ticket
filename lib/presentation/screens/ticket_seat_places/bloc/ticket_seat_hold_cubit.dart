import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/ticket_seat_hold_state.dart';
import 'package:eticket/domain/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TicketSeatHoldCubit extends Cubit<TicketSeatHoldState> {
  final SnackbarCubit _snackbarCubit;
  final TicketRepository _ticketRepository;
  final String _eventId;
  final DateTime _eventDate;

  TicketSeatHoldCubit._({
    required SnackbarCubit snackbarCubit,
    required TicketRepository ticketRepository,
    required String eventId,
    required DateTime eventDate,
  })  : _snackbarCubit = snackbarCubit,
        _ticketRepository = ticketRepository,
        _eventId = eventId,
        _eventDate = eventDate,
        super(const TicketSeatHoldState.data(
          tickets: [],
        ));

  Future<void> addTicket({
    required TicketDto ticket,
  }) async {
    if (!state.tickets.any((item) => item.id == ticket.id)) {
      emit(TicketSeatHoldState.data(
        tickets: [
          ...state.tickets,
          ticket,
        ],
      ));
    }
  }

  Future<void> removeAllTickets() async {
    emit(const TicketSeatHoldState.data(tickets: []));
  }

  Future<void> removeTicket({
    required TicketDto ticket,
  }) async {
    if (state.tickets.any((item) => item.id == ticket.id)) {
      final tickets = [...state.tickets];
      tickets.removeWhere((item) => item.id == ticket.id);

      emit(TicketSeatHoldState.data(tickets: tickets));
    }
  }

  Future<void> holdTickets() async {
    emit(TicketSeatHoldState.holding(tickets: state.tickets));

    final result = await _ticketRepository.holdTicket(
      ticketIds: state.tickets.map((ticket) => ticket.id).toList(),
      eventId: _eventId,
      eventDate: _eventDate,
    );

    result.fold(
      (l) {
        _snackbarCubit.showErrorSnackbar(message: l.errorMessage);

        emit(TicketSeatHoldState.holdError(tickets: state.tickets));
      },
      (bookingId) {
        final totalSum = state.tickets.fold(
          0.0,
          (previousValue, ticket) => previousValue + ticket.price,
        );

        emit(TicketSeatHoldState.holdSuccess(
          tickets: state.tickets,
          totalSum: totalSum,
          bookingId: bookingId,
        ));
      },
    );
  }

  factory TicketSeatHoldCubit.initialize({
    required String eventId,
    required DateTime eventDate,
  }) {
    return TicketSeatHoldCubit._(
      eventId: eventId,
      eventDate: eventDate,
      ticketRepository: GetIt.I.get(),
      snackbarCubit: GetIt.I.get(),
    );
  }
}
