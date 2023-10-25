import 'package:eticket/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/data.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState.initial({
    required List<EventDto> events,
  }) = _HomeState;
  const factory HomeState.loadingInProgress({
    required List<EventDto> events,
  }) = _HomeLoadingInProgress;
  const factory HomeState.loadingSuccess({
    required List<EventDto> events,
    required bool isNextPageAvailable,
  }) = HomeLoadingSuccess;
  const factory HomeState.loadingError({
    required List<EventDto> events,
    String? errorMessage,
  }) = _HomeLoadingError;
}
