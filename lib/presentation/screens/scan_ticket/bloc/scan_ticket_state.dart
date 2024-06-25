import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_ticket_state.freezed.dart';

@freezed
class ScanTicketState with _$ScanTicketState {
  const ScanTicketState._();

  const factory ScanTicketState.initial() = _ScanTicketInitialState;

  const factory ScanTicketState.checkingState({
    required String ticketQrCode,
  }) = ScanTicketCheckingState;

  const factory ScanTicketState.checkError({
    required String? errorMessage,
  }) = _ScanTicketCheckErrorState;

  const factory ScanTicketState.checkSuccess({
    required String ticketQrCode,
    required String successMessage,
  }) = _ScanTicketCheckSuccessState;
}
