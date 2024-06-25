import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_places_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
export 'ticket_standing_places_state.dart';

class TicketStandingPlacesCubit extends Cubit<TicketStandingPlacesState> {
  final TicketRepository _ticketRepository;
  final String _eventId;
  final DateTime _eventDate;

  TicketStandingPlacesCubit._({
    required TicketRepository ticketRepository,
    required String eventId,
    required DateTime eventDate,
  })  : _ticketRepository = ticketRepository,
        _eventId = eventId,
        _eventDate = eventDate,
        super(
          const TicketStandingPlacesState.initial(),
        );

  Future<void> getTickets() async {
    emit(const TicketStandingPlacesState.loading());

    final response = await _ticketRepository.getStandingTicketsCountByEventId(
      eventId: _eventId,
      eventDate: _eventDate,
    );

    response.fold(
      (e) => emit(TicketStandingPlacesState.error(
        errorMessage: e.errorMessage,
      )),
      (tickets) {
        tickets.isEmpty
            ? emit(const TicketStandingPlacesState.empty())
            : emit(TicketStandingPlacesState.success(tickets: tickets));
      },
    );
  }

  factory TicketStandingPlacesCubit.initialize({
    required String eventId,
    required DateTime eventDate,
  }) {
    return TicketStandingPlacesCubit._(
      ticketRepository: GetIt.I.get(),
      eventId: eventId,
      eventDate: eventDate,
    );
  }
}
