import 'package:eticket/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState.initial({
    required List<BookingDto> bookingsList,
    required BookingFilter filter,
  }) = _HistoryStateInitial;

  const factory HistoryState.loadInProgress({
    required List<BookingDto> bookingsList,
    required BookingFilter filter,
  }) = HistoryProgress;

  const factory HistoryState.loadSuccess({
    required List<BookingDto> bookingsList,
    required BookingFilter filter,
    required bool isNextPageAvailable,
  }) = _HistoryStateSuccess;

  const factory HistoryState.loadError({
    required List<BookingDto> bookingsList,
    required BookingFilter filter,
    String? errorMessage,
  }) = _HistoryStateError;
}
