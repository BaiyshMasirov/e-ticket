import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/auth/login/bloc/login_state.dart';
import 'package:get_it/get_it.dart';

export 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SnackbarCubit _snackbarCubit;
  final AuthCubit _authCubit;
  final AccountRepository _accountRepository;

  LoginCubit._({
    required SnackbarCubit snackbarCubit,
    required AuthCubit authCubit,
    required AccountRepository accountRepository,
  })  : _snackbarCubit = snackbarCubit,
        _authCubit = authCubit,
        _accountRepository = accountRepository,
        super(const LoginState.initial());

  Future<void> login({
    required LoginCommandDto loginCommandDto,
  }) async {
    emit(const LoginState.loading());

    final result = await _accountRepository.login(loginCommandDto);
    result.fold(
      (l) {
        emit(LoginState.failure(errorMessage: l.errorMessage));
        _snackbarCubit.showErrorSnackbar(message: l.errorMessage);
      },
      (r) {
        emit(const LoginState.success());
        _authCubit.setToken(credentials: r);
      },
    );
  }

  factory LoginCubit.initialize() {
    return LoginCubit._(
      snackbarCubit: GetIt.I.get(),
      authCubit: GetIt.I.get(),
      accountRepository: GetIt.I.get(),
    );
  }
}
