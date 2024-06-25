import 'package:eticket/auth/authentication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState.initial());

  Future<void> checkAndUpdateAuthStatus() async {
    final isSignedIn = await _authRepository.isSignedIn();
    final result = isSignedIn
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
    emit(result);
  }

  Future<void> setToken({
    required UserCredentials credentials,
  }) async {
    await _authRepository.setToken(credentials: credentials);

    emit(const AuthState.authenticated());
  }

  Future<void> signOut() async {
    await _authRepository.signOut();

    emit(const AuthState.unauthenticated());
  }
}
