import 'package:common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/place_filarmonia/bloc/filarmonia_seat_places_cubit.dart';
import 'package:get_it/get_it.dart';

export 'filarmonia_seat_places_state.dart';

class FilarmoniaSeatPlacesCubit extends Cubit<FilarmoniaSeatPlacesState> {
  final String _eventId;
  final TicketRepository _ticketRepository;

  FilarmoniaSeatPlacesCubit._({
    required String eventId,
    required TicketRepository ticketRepository,
  })  : _ticketRepository = ticketRepository,
        _eventId = eventId,
        super(const FilarmoniaSeatPlacesState.initial());

  Future<void> getTickets() async {
    emit(const FilarmoniaSeatPlacesState.loading());

    final result = await _ticketRepository.getSeatTicketsByEventId(
      eventId: _eventId,
    );

    emit(const FilarmoniaSeatPlacesState.data(
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

  factory FilarmoniaSeatPlacesCubit.initialize({
    required String eventId,
  }) {
    return FilarmoniaSeatPlacesCubit._(
      eventId: eventId,
      ticketRepository: GetIt.I.get(),
    );
  }
}
