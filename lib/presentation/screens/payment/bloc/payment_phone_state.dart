import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_phone_state.freezed.dart';

@freezed
class PaymentPhoneState with _$PaymentPhoneState {
  const PaymentPhoneState._();

  const factory PaymentPhoneState.initial() = _PaymentPhoneStateInitial;

  const factory PaymentPhoneState.paymentCreating({
    required String phoneNumber,
  }) = _PaymentPhoneStatePaymentCreating;

  const factory PaymentPhoneState.paymentCreateError({
    required String phoneNumber,
    required String? errorMessage,
  }) = _PaymentPhoneStateCreateError;

  const factory PaymentPhoneState.paymentCreateSuccess({
    required String phoneNumber,
    required String deepLink,
  }) = _PaymentPhoneStateCreateSuccess;
}
