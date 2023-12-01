import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_password_state.freezed.dart';

@freezed
class RefreshPasswordState with _$RefreshPasswordState {
  const RefreshPasswordState._();

  const factory RefreshPasswordState.initial() = _RefreshPasswordInitial;
  const factory RefreshPasswordState.success() = _RefreshPasswordSuccess;
  const factory RefreshPasswordState.failure({
    String? errorMessage,
  }) = _RefreshPasswordFailure;
  const factory RefreshPasswordState.loading() = RefreshPasswordLoading;
}
