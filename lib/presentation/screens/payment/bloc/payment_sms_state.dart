import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_sms_state.freezed.dart';

@freezed
class PaymentSMSState with _$PaymentSMSState {
  const PaymentSMSState._();

  const factory PaymentSMSState.initial() = _PaymentSMSStateInitial;

  const factory PaymentSMSState.paymentCreating({
    required String phoneNumber,
  }) = PaymentSMSStateCreating;

  const factory PaymentSMSState.paymentCreateError({
    required String phoneNumber,
    required String? errorMessage,
  }) = _PaymentSMSStateCreateError;

  const factory PaymentSMSState.paymentCreateSuccess({
    required String phoneNumber,
  }) = _PaymentSMSStateCreateSuccess;

  const factory PaymentSMSState.paymentConfirming({
    required String phoneNumber,
    required String code,
  }) = PaymentSMSStateConfirming;

  const factory PaymentSMSState.paymentConfirmSuccess({
    required String phoneNumber,
    required String code,
  }) = _PaymentSMSStateConfirmSuccess;

  const factory PaymentSMSState.paymentConfirmError({
    required String phoneNumber,
    required String code,
    required String? errorMessage,
  }) = _PaymentSMSStateConfirmError;
}
