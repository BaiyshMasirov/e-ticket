import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  const factory RegisterState.initial() = _RegisterInitial;

  const factory RegisterState.success({
    required String login,
    required String password,
  }) = _RegisterSuccess;

  const factory RegisterState.failure({String? errorMessage}) =
      _RegisterFailure;

  const factory RegisterState.loading() = RegisterLoading;
}
