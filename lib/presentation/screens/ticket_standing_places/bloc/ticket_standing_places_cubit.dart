import 'package:common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_places_state.dart';
import 'package:get_it/get_it.dart';

import 'package:eticket/data/models/models.dart';
export 'ticket_standing_places_state.dart';

class TicketStandingPlacesCubit extends Cubit<TicketStandingPlacesState> {
  final TicketRepository _ticketRepository;
  final String _eventId;
  final DateTime _dateTime;

  TicketStandingPlacesCubit._({
    required TicketRepository ticketRepository,
    required String eventId,
    required DateTime dateTime,
  })  : _ticketRepository = ticketRepository,
        _eventId = eventId,
        _dateTime = dateTime,
        super(
          const TicketStandingPlacesState.initial(),
        );

  Future<void> getTickets() async {
    emit(const TicketStandingPlacesState.loading());

    final response = await _ticketRepository.getStandingTicketsCountByEventId(
      eventId: _eventId,
    );

    response.fold(
      (e) => emit(TicketStandingPlacesState.error(
        errorMessage: e.errorMessage,
      )),
      (r) => emit(TicketStandingPlacesState.success(
        tickets: r,
      )),
    );
  }

  factory TicketStandingPlacesCubit.initialize({
    required String eventId,
    required DateTime dateTime,
  }) {
    return TicketStandingPlacesCubit._(
      ticketRepository: GetIt.I.get(),
      eventId: eventId,
      dateTime: dateTime,
    );
  }
}
