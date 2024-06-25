import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/events_by_type/bloc/events_by_type_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
export 'events_by_type_state.dart';

class EventsByTypeCubit extends Cubit<EventsByTypeState> {
  final EventRepository _eventRepository;
  final EventType _eventType;

  int _page = Constants.initialPage;
  final _pageSize = Constants.initialPageSize;

  EventsByTypeCubit._({
    required EventRepository eventRepository,
    required EventType eventType,
  })  : _eventRepository = eventRepository,
        _eventType = eventType,
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
      pageSize: _pageSize,
      eventsFilter: EventsFilter.initial().copyWith(type: _eventType),
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

  factory EventsByTypeCubit.initialize(EventType eventType) {
    return EventsByTypeCubit._(
      eventRepository: GetIt.I.get(),
      eventType: eventType,
    );
  }
}
