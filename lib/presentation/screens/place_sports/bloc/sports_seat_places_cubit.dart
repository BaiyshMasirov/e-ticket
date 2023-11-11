import 'package:common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/place_sports/bloc/sports_seat_places_state.dart';
import 'package:get_it/get_it.dart';

export 'sports_seat_places_state.dart';

class SportsSeatPlacesCubit extends Cubit<SportsSeatPlacesState> {
  final String _eventId;
  final TicketRepository _ticketRepository;

  SportsSeatPlacesCubit._({
    required String eventId,
    required TicketRepository ticketRepository,
  })  : _ticketRepository = ticketRepository,
        _eventId = eventId,
        super(const SportsSeatPlacesState.initial());

  Future<void> getTickets() async {
    emit(const SportsSeatPlacesState.loading());

    final result = await _ticketRepository.getSeatTicketsByEventId(
      eventId: _eventId,
    );

    emit(const SportsSeatPlacesState.data(
      tickets: [],
    ));

    // result.fold(
    //   (l) => emit(FilarmoniaSeatPlacesState.error(
    //     errorMessage: l.errorMessage,
    //   )),
    //   (r) => emit(FilarmoniaSeatPlacesState.data(
    //     tickets: r,
    //   )),
    // );
  }

  factory SportsSeatPlacesCubit.initialize({
    required String eventId,
  }) {
    return SportsSeatPlacesCubit._(
      eventId: eventId,
      ticketRepository: GetIt.I.get(),
    );
  }
}
