import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_confirm_state.freezed.dart';

@freezed
class PayConfirmState with _$PayConfirmState {
  const PayConfirmState._();

  const factory PayConfirmState.initial({
    required String? phoneNumber,
  }) = _PayConfirmInitialState;

  const factory PayConfirmState.creatingPayment({
    required String phoneNumber,
  }) = PayCreatingState;

  const factory PayConfirmState.creatingPaymentError({
    required String phoneNumber,
    required String? errorMessage,
  }) = _PayConfirmCreatingErrorState;

  const factory PayConfirmState.creatingPaymentSuccess({
    required String phoneNumber,
    required String? code,
  }) = _PayConfirmCreatingSuccessState;

  const factory PayConfirmState.confirmingPayment({
    required String phoneNumber,
    required String code,
  }) = PayConfirmingState;

  const factory PayConfirmState.confirmingPaymentSuccess({
    required String phoneNumber,
    required String code,
  }) = _PayConfirmSuccessState;

  const factory PayConfirmState.confirmingPaymentError({
    required String phoneNumber,
    required String code,
    required String? errorMessage,
  }) = _PayConfirmErrorState;
}
