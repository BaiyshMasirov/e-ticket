import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const PaymentState._();

  const factory PaymentState.initial({
    required String? phoneNumber,
  }) = _PaymentInitialState;

  const factory PaymentState.paymentCreating({
    required String phoneNumber,
  }) = PaymentCreatingState;

  const factory PaymentState.paymentCreateError({
    required String phoneNumber,
    required String? errorMessage,
  }) = _PaymentCreateErrorState;

  const factory PaymentState.paymentCreateSuccess({
    required String phoneNumber,
    required String? code,
  }) = _PaymentCreateSuccessState;

  const factory PaymentState.paymentConfirming({
    required String phoneNumber,
    required String code,
  }) = PaymentConfirmingState;

  const factory PaymentState.paymentConfirmSuccess({
    required String phoneNumber,
    required String code,
  }) = _PaymentConfirmSuccessState;

  const factory PaymentState.paymentConfirmError({
    required String phoneNumber,
    required String code,
    required String? errorMessage,
  }) = _PaymentConfirmErrorState;
}
