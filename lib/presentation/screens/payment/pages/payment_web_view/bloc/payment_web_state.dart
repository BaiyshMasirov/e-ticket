import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_web_state.freezed.dart';

@freezed
class PaymentWebState with _$PaymentWebState {
  const PaymentWebState._();

  const factory PaymentWebState.initial() = _PaymentWebStateInitial;

  const factory PaymentWebState.loading() = _PaymentWebStateLoading;

  const factory PaymentWebState.success({
    required String acquiringUrl,
    required String successRedirectUrl,
  }) = _PaymentWebStateSuccess;

  const factory PaymentWebState.error({
    required String? errorMessage,
  }) = _PaymentWebStateError;
}
