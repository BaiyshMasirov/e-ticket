import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/events_by_type/bloc/events_by_type_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

export 'events_by_type_state.dart';

class EventsByTypeCubit extends Cubit<EventsByTypeState> {
  final EventRepository _eventRepository;
  final KeyValueMapDto _eventKeyValue;

  int _page = 1;

  EventsByTypeCubit._({
    required EventRepository eventRepository,
    required KeyValueMapDto eventKeyValue,
  })  : _eventRepository = eventRepository,
        _eventKeyValue = eventKeyValue,
        super(const EventsByTypeState.initial(
          events: [],
        ));

  Future<void> refreshPage({
    EventsFilter? filter,
  }) async {
    _page = 1;
    emit(
      const EventsByTypeState.initial(events: []),
    );

    await getNextEventsPage();
  }

  Future<void> getNextEventsPage() async {
    emit(EventsByTypeState.loadingInProgress(
      events: state.events,
    ));

    final result = await _eventRepository.getEvents(
      page: _page,
      eventsFilter: EventsFilter(type: _eventKeyValue),
    );

    result.fold(
      (e) => emit(EventsByTypeState.loadingError(
        events: state.events,
        errorMessage: e.errorMessage,
      )),
      (data) {
        _page++;

        final events = [
          ...state.events,
          ...data.events,
        ];

        if (events.isEmpty) {
          emit(EventsByTypeState.loadingSuccessEmpty(
            events: events,
          ));
        } else {
          emit(EventsByTypeState.loadingSuccess(
            events: events,
            isNextPageAvailable: _page < data.maxPage,
          ));
        }
      },
    );
  }

  factory EventsByTypeCubit.initialize(KeyValueMapDto eventKeyValue) {
    return EventsByTypeCubit._(
      eventRepository: GetIt.I.get(),
      eventKeyValue: eventKeyValue,
    );
  }
}
