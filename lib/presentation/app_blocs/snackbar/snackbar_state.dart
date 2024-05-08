import 'package:freezed_annotation/freezed_annotation.dart';

part 'snackbar_state.freezed.dart';

@freezed
class SnackbarState with _$SnackbarState {
  const SnackbarState._();

  const factory SnackbarState.initial() = _SnackbarInitial;

  const factory SnackbarState.error({
    required String? message,
  }) = _SnackbarError;

  const factory SnackbarState.success({
    required String message,
  }) = _SnackbarSuccess;
}
