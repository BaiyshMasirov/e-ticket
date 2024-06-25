import 'package:freezed_annotation/freezed_annotation.dart';

part 'pin_code_verify_state.freezed.dart';

@freezed
class PinCodeVerifyState with _$PinCodeVerifyState {
  const PinCodeVerifyState._();

  const factory PinCodeVerifyState.initial() = _PinCodeVerifyInitialState;

  const factory PinCodeVerifyState.loading() = _PinCodeVerifyLoadingState;

  const factory PinCodeVerifyState.success() = _PinCodeVerifySuccessState;

  const factory PinCodeVerifyState.error() = _PinCodeVerifyErrorState;
}
