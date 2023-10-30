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

    // TODO: uncomment
    // final response = await _ticketRepository.getTicketsCountByEventId(
    //   eventId: _eventId,
    // );
    //
    // response.fold(
    //   (e) => emit(TicketStandingPlacesState.error(
    //     errorMessage: e.errorMessage,
    //   )),
    //   (r) => emit(TicketStandingPlacesState.success(
    //     ticketTypeCount: r,
    //   )),
    // );

    //TODO: remove below
    await Future.delayed(const Duration(seconds: 1));
    emit(const TicketStandingPlacesState.success(
      tickets: [
        TicketTypeCountDto(
          count: 100000,
          availableCount: 1000000,
          price: 100,
          type: 0,
        ),
        TicketTypeCountDto(
          count: 40,
          availableCount: 30,
          price: 200,
          type: 1,
        ),
        TicketTypeCountDto(
          count: 43,
          availableCount: 20,
          price: 300,
          type: 2,
        ),
      ],
    ));
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
