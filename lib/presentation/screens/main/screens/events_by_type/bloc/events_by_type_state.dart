import 'package:common/common.dart';
import 'package:eticket/data/models/models.dart';

part 'events_by_type_state.freezed.dart';

@freezed
class EventsByTypeState with _$EventsByTypeState {
  const EventsByTypeState._();
  const factory EventsByTypeState.initial({
    required List<EventDto> events,
  }) = _EventsByTypeState;
  const factory EventsByTypeState.loadingInProgress({
    required List<EventDto> events,
  }) = _SearchLoadingInProgress;
  const factory EventsByTypeState.loadingSuccess({
    required List<EventDto> events,
    required bool isNextPageAvailable,
  }) = _SearchLoadingSuccess;
  const factory EventsByTypeState.loadingError({
    required List<EventDto> events,
    String? errorMessage,
  }) = _SearchLoadingError;
}
