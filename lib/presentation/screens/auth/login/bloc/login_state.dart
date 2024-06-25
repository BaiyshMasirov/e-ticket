import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState.initial() = _LoginInitial;

  const factory LoginState.success({
    required String login,
    required String password,
  }) = _LoginSuccess;

  const factory LoginState.failure({
    String? errorMessage,
  }) = _LoginFailure;

  const factory LoginState.confirmCodeRequired({
    required String email,
    String? errorMessage,
  }) = _LoginConfirmCodeRequired;

  const factory LoginState.loading() = LoginLoading;
}
