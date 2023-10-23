import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState.initial() = _LoginInitial;
  const factory LoginState.success() = _LoginSuccess;
  const factory LoginState.failure({
    String? errorMessage,
  }) = _LoginFailure;
  const factory LoginState.loading() = LoginLoading;
}
