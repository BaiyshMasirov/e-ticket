import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_history_state.freezed.dart';

@freezed
class BookingHistoryState with _$BookingHistoryState {
  const BookingHistoryState._();

  const factory BookingHistoryState.initial({
    required List<Fresh<BookingModel>> bookings,
    required BookingFilter filter,
    required bool? isFreshData,
  }) = _BookingHistoryStateInitial;

  const factory BookingHistoryState.loading({
    required List<Fresh<BookingModel>> bookings,
    required BookingFilter filter,
    required bool? isFreshData,
  }) = BookingHistoryProgress;

  const factory BookingHistoryState.success({
    required List<Fresh<BookingModel>> bookings,
    required BookingFilter filter,
    required bool isNextPageAvailable,
    required bool? isFreshData,
  }) = _BookingHistoryStateSuccess;

  const factory BookingHistoryState.empty({
    required List<Fresh<BookingModel>> bookings,
    required BookingFilter filter,
    required bool? isFreshData,
  }) = _BookingHistoryStateEmpty;

  const factory BookingHistoryState.error({
    required List<Fresh<BookingModel>> bookings,
    required BookingFilter filter,
    required bool? isFreshData,
    String? errorMessage,
  }) = _BookingHistoryStateError;
}
