import 'package:eticket/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState.initial({
    required List<UserBookingsListDto> bookingsList,
    required UserBookingsFilter filter,
  }) = _HistoryStateInitial;

  const factory HistoryState.loadInProgress({
    required List<UserBookingsListDto> bookingsList,
    required UserBookingsFilter filter,
  }) = HistoryProgress;

  const factory HistoryState.loadSuccess({
    required List<UserBookingsListDto> bookingsList,
    required UserBookingsFilter filter,
    required bool isNextPageAvailable,
  }) = _HistoryStateSuccess;

  const factory HistoryState.loadError({
    required List<UserBookingsListDto> bookingsList,
    required UserBookingsFilter filter,
    String? errorMessage,
  }) = _HistoryStateError;
}
