import 'package:common/common.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/ticket_seat_places_state.dart';
import 'package:eticket/domain/repository/repository.dart';
import 'package:get_it/get_it.dart';

class TicketSeatPlacesCubit extends Cubit<TicketSeatPlacesState> {
  final String _eventId;
  final DateTime _eventDate;
  final TicketRepository _ticketRepository;

  TicketSeatPlacesCubit._({
    required String eventId,
    required DateTime eventDate,
    required TicketRepository ticketRepository,
  })  : _eventId = eventId,
        _ticketRepository = ticketRepository,
        _eventDate = eventDate,
        super(const TicketSeatPlacesState.initial());

  Future<void> getTickets() async {
    emit(const TicketSeatPlacesState.loading());

    final result = await _ticketRepository.getSeatTicketsByEventId(
      eventId: _eventId,
      eventDate: _eventDate,
    );

    result.fold(
      (l) => emit(TicketSeatPlacesState.error(
        l.errorMessage,
      )),
      (r) => emit(TicketSeatPlacesState.data(
        tickets: r,
      )),
    );
  }

  factory TicketSeatPlacesCubit.initialize({
    required String eventId,
    required DateTime eventDate,
  }) {
    return TicketSeatPlacesCubit._(
      eventId: eventId,
      eventDate: eventDate,
      ticketRepository: GetIt.I.get(),
    );
  }
}
