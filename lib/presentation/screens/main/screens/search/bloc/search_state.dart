import 'package:eticket/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/data.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();
  const factory SearchState.initial({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
    required String searchText,
  }) = _SearchState;
  const factory SearchState.loadingInProgress({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
    required String searchText,
  }) = _SearchLoadingInProgress;
  const factory SearchState.loadingSuccess({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
    required String searchText,
    required bool isNextPageAvailable,
  }) = _SearchLoadingSuccess;
  const factory SearchState.loadingError({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
    required String searchText,
    String? errorMessage,
  }) = _SearchLoadingError;
}
