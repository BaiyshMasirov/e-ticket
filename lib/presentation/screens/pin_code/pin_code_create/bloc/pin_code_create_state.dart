import 'package:freezed_annotation/freezed_annotation.dart';

part 'pin_code_create_state.freezed.dart';

@freezed
class PinCodeCreateState with _$PinCodeCreateState {
  const PinCodeCreateState._();

  const factory PinCodeCreateState.initial() = _PinCodeCreateInitialState;

  const factory PinCodeCreateState.success() = _PinCodeCreateSuccessState;
}
