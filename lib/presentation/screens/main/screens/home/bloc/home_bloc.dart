import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_state.dart';
import 'package:get_it/get_it.dart';

export 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final KeyValueMapDto _eventType;
  final EventRepository _eventRepository;

  int _page = 1;

  HomeCubit._({
    required KeyValueMapDto eventType,
    required EventRepository eventRepository,
  })  : _eventType = eventType,
        _eventRepository = eventRepository,
        super(const HomeState.initial(
          events: [],
        ));

  Future<void> clearFilter() async {
    emit(state);
    refreshPage();
  }

  Future<void> refreshPage({
    EventsFilter? filter,
  }) async {
    _page = 1;
    emit(const HomeState.initial(events: []));

    await getNextEventsPage();
  }

  Future<void> getNextEventsPage() async {
    emit(HomeState.loadingInProgress(
      events: state.events,
    ));

    final result = await _eventRepository.getEvents(
        page: _page, eventsFilter: EventsFilter(type: _eventType));

    result.fold(
      (e) => emit(HomeState.loadingError(
        events: state.events,
        errorMessage: e.errorMessage,
      )),
      (data) {
        _page++;
        emit(HomeState.loadingSuccess(
          events: [
            ...state.events,
            ...data.events,
          ],
          isNextPageAvailable: _page < data.maxPage,
        ));
      },
    );
  }

  factory HomeCubit.initialize(KeyValueMapDto eventType) {
    return HomeCubit._(
      eventType: eventType,
      eventRepository: GetIt.I.get(),
    );
  }
}
