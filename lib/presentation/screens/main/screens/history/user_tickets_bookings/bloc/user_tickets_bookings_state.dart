import 'package:eticket/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tickets_bookings_state.freezed.dart';

@freezed
class UserTicketsBookingsState with _$UserTicketsBookingsState {
  const UserTicketsBookingsState._();

  const factory UserTicketsBookingsState.initial() =
      _UserTicketsBookingsStateInitial;

  const factory UserTicketsBookingsState.loading() = UserTicketsBookingsLoading;

  const factory UserTicketsBookingsState.data({
    required List<TicketsDto> data,
  }) = _UserTicketsBookingsStateData;

  const factory UserTicketsBookingsState.error({
    String? errorMessage,
  }) = _UserTicketsBookingsStateError;
}
