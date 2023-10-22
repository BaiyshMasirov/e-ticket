import 'package:eticket/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/data.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState.initial({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
  }) = _HomeState;
  const factory HomeState.loadingInProgress({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
  }) = _HomeLoadingInProgress;
  const factory HomeState.loadingSuccess({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
    required bool isNextPageAvailable,
  }) = _HomeLoadingSuccess;
  const factory HomeState.loadingError({
    required List<EventDto> events,
    required EventsFilter eventsFilter,
    String? errorMessage,
  }) = _HomeLoadingError;
}
