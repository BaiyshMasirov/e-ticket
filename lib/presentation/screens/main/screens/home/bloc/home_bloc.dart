import 'package:common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_state.dart';
import 'package:get_it/get_it.dart';

export 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final EventRepository _eventRepository;

  int _page = 1;

  HomeCubit._({
    required EventRepository eventRepository,
  })  : _eventRepository = eventRepository,
        super(const HomeState.initial(
          events: [],
          eventsFilter: EventsFilter(),
        ));

  Future<void> clearFilter() async {
    emit(state.copyWith(eventsFilter: const EventsFilter()));
    refreshPage();
  }

  Future<void> refreshPage({
    EventsFilter? filter,
  }) async {
    _page = 1;
    emit(
      HomeState.initial(
        events: [],
        eventsFilter: filter ?? this.state.eventsFilter,
      ),
    );

    await getNextEventsPage();
  }

  Future<void> getNextEventsPage() async {
    emit(HomeState.loadingInProgress(
      eventsFilter: state.eventsFilter,
      events: state.events,
    ));

    final result = await _eventRepository.getEvents(
      eventsFilter: state.eventsFilter,
      page: _page,
    );

    result.fold(
      (e) => emit(HomeState.loadingError(
        events: state.events,
        eventsFilter: state.eventsFilter,
        errorMessage: e.errorMessage,
      )),
      (data) {
        _page++;
        emit(HomeState.loadingSuccess(
          events: [
            ...state.events,
            ...data,
          ],
          eventsFilter: state.eventsFilter,
          // TODO: implement next page availability logic
          // isNextPageAvailable: _page < data.maxPage,
          isNextPageAvailable: true,
        ));
      },
    );
  }

  factory HomeCubit.initialize() {
    return HomeCubit._(
      eventRepository: GetIt.I.get(),
    );
  }
}
