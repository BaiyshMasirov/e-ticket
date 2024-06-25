import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const ChangePasswordState._();

  const factory ChangePasswordState.initial() = _ChangePasswordInitial;
  const factory ChangePasswordState.success() = _ChangePasswordSuccess;
  const factory ChangePasswordState.failure({String? errorMessage}) =
      _ChangePasswordFailure;
  const factory ChangePasswordState.loading() = ChangePasswordLoading;
}
