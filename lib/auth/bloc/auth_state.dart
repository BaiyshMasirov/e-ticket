import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = AuthStateInitial;

  const factory AuthState.unauthenticated() = _AuthStateUnauthenticated;

  const factory AuthState.authenticated() = _AuthStateAuthenticated;

  const factory AuthState.failure(String errorMessage) = _AuthStateFailure;
}
