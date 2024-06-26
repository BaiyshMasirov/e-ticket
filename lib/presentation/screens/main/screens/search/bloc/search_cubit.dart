import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/main/screens/search/bloc/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

export 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final EventRepository _eventRepository;

  int _page = Constants.initialPage;
  final _pageSize = Constants.initialPageSize;

  SearchCubit._({
    required EventRepository eventRepository,
  })  : _eventRepository = eventRepository,
        super(SearchState.initial(
          events: [],
          eventsFilter: EventsFilter.initial(),
          searchText: '',
        ));

  Future<void> textTyped(String searchText) async {
    emit(state.copyWith(searchText: searchText));
    refreshPage();
  }

  Future<void> clearText() async {
    emit(state.copyWith(searchText: ''));
    refreshPage();
  }

  Future<void> clearFilter() async {
    emit(state.copyWith(eventsFilter: EventsFilter.initial()));
    refreshPage();
  }

  Future<void> refreshPage({
    EventsFilter? filter,
    String? searchText,
  }) async {
    _page = 1;
    emit(
      SearchState.initial(
        events: [],
        eventsFilter: filter ?? this.state.eventsFilter,
        searchText: searchText ?? this.state.searchText,
      ),
    );

    await getNextEventsPage();
  }

  Future<void> getNextEventsPage() async {
    emit(SearchState.loadingInProgress(
      eventsFilter: state.eventsFilter,
      events: state.events,
      searchText: state.searchText,
    ));

    final result = await _eventRepository.getEvents(
      eventsFilter: state.eventsFilter,
      searchText: state.searchText,
      page: _page,
      pageSize: _pageSize,
    );

    result.fold(
      (e) => emit(SearchState.loadingError(
        events: state.events,
        eventsFilter: state.eventsFilter,
        searchText: state.searchText,
        errorMessage: e.errorMessage,
      )),
      (data) {
        _page++;

        final events = [
          ...state.events,
          ...data.events,
        ];

        if (events.isEmpty) {
          emit(SearchState.loadingSuccessEmpty(
            events: [
              ...state.events,
              ...data.events,
            ],
            eventsFilter: state.eventsFilter,
            searchText: state.searchText,
          ));
        } else {
          emit(SearchState.loadingSuccess(
            events: [
              ...state.events,
              ...data.events,
            ],
            eventsFilter: state.eventsFilter,
            searchText: state.searchText,
            isNextPageAvailable: _page < data.maxPage,
          ));
        }
      },
    );
  }

  factory SearchCubit.initialize() {
    return SearchCubit._(
      eventRepository: GetIt.I.get(),
    );
  }
}
