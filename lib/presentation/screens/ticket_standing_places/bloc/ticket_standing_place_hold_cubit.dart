import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_hold_state.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/models/models.dart';
import 'package:collection/collection.dart';
import 'package:eticket/domain/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
export 'ticket_standing_place_hold_state.dart';

class TicketStandingPlaceHoldCubit extends Cubit<TicketStandingPlaceHoldState> {
  final SnackbarCubit _snackbarCubit;
  final TicketRepository _ticketRepository;
  final String _eventId;
  final DateTime _eventDate;

  TicketStandingPlaceHoldCubit._({
    required SnackbarCubit snackbarCubit,
    required TicketRepository ticketRepository,
    required String eventId,
    required DateTime eventDate,
  })  : _ticketRepository = ticketRepository,
        _snackbarCubit = snackbarCubit,
        _eventId = eventId,
        _eventDate = eventDate,
        super(const TicketStandingPlaceHoldState.data(
          chosenTickets: [],
        ));

  Future<void> holdTickets() async {
    emit(TicketStandingPlaceHoldState.holding(
      chosenTickets: state.chosenTickets,
    ));

    final result = await _ticketRepository.holdTicketWithoutSeating(
      tickets: state.chosenTickets
          .where((t) => t.count != 0)
          .map((t) => TicketTypeCountDto(
                count: t.count,
                availableCount: 0,
                price: 0,
                type: t.type,
              ))
          .toList(),
      eventId: _eventId,
      eventDate: _eventDate,
    );

    result.fold(
      (l) {
        _snackbarCubit.showErrorSnackbar(message: l.errorMessage);
        emit(TicketStandingPlaceHoldState.holdingError(
          chosenTickets: state.chosenTickets,
          errorMessage: l.errorMessage,
        ));
      },
      (bookingId) {
        final totalSum = state.chosenTickets.fold(
          0.0,
          (previousValue, t) => previousValue + t.count * t.price,
        );

        emit(TicketStandingPlaceHoldState.holdingSuccess(
          chosenTickets: state.chosenTickets,
          bookingId: bookingId,
          ticketsCost: totalSum,
        ));
      },
    );
  }

  void initializeTickets({
    required List<TicketTypeCountDto> tickets,
  }) {
    final chosenTickets = tickets
        .map((e) => TicketStandingPlacePick(
              price: e.price,
              type: e.type,
              count: 0,
            ))
        .toList();

    emit(TicketStandingPlaceHoldState.data(
      chosenTickets: chosenTickets,
    ));
  }

  void clearChosenTickets() {
    emit(const TicketStandingPlaceHoldState.data(
      chosenTickets: [],
    ));
  }

  Future<void> increaseTicketAmount(int type, int ticketsCount) async {
    final chosenTickets = [...state.chosenTickets];

    final chosenTick = chosenTickets.firstWhereOrNull(
      (item) => item.type == type,
    );

    if (chosenTick == null || chosenTick.count >= ticketsCount) return;

    chosenTickets.removeWhere((item) => item.type == type);
    final updatedTicket = chosenTick.copyWith(
      count: chosenTick.count + 1,
    );
    chosenTickets.add(updatedTicket);

    emit(TicketStandingPlaceHoldState.data(
      chosenTickets: [...chosenTickets],
    ));
  }

  Future<void> decreaseTicketAmount(int type, int ticketsCount) async {
    final chosenTickets = [...state.chosenTickets];

    final chosenTick = chosenTickets.firstWhereOrNull(
      (item) => item.type == type,
    );
    if (chosenTick == null) return;

    if (chosenTick.count <= 0) return;

    chosenTickets.removeWhere((item) => item.type == type);
    final updatedTicket = chosenTick.copyWith(
      count: chosenTick.count - 1,
    );
    chosenTickets.add(updatedTicket);

    emit(TicketStandingPlaceHoldState.data(
      chosenTickets: [...chosenTickets],
    ));
  }

  factory TicketStandingPlaceHoldCubit.initialize({
    required String eventId,
    required DateTime eventDate,
  }) {
    return TicketStandingPlaceHoldCubit._(
      ticketRepository: GetIt.I.get(),
      snackbarCubit: GetIt.I.get(),
      eventDate: eventDate,
      eventId: eventId,
    );
  }
}
