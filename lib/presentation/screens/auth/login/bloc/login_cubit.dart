import 'package:eticket/auth/authentication.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/screens/auth/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

export 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SnackbarCubit _snackbarCubit;
  final AuthCubit _authCubit;
  final AccountRepository _accountRepository;
  final SettingsCubit _settingsCubit;
  final UserPrefsRepository _userPrefsRepository;

  LoginCubit._({
    required SnackbarCubit snackbarCubit,
    required AuthCubit authCubit,
    required AccountRepository accountRepository,
    required SettingsCubit settingsCubit,
    required UserPrefsRepository userPrefsRepository,
  })  : _snackbarCubit = snackbarCubit,
        _authCubit = authCubit,
        _accountRepository = accountRepository,
        _settingsCubit = settingsCubit,
        _userPrefsRepository = userPrefsRepository,
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
      (creds) async {
        emit(LoginState.success(
          login: loginCommandDto.email,
          password: loginCommandDto.password,
        ));

        await _userPrefsRepository.needToSetPinCode(needToSetPinCode: true);
        _authCubit.setToken(credentials: creds);
        _settingsCubit.updateState();
      },
    );
  }

  factory LoginCubit.initialize() {
    return LoginCubit._(
      snackbarCubit: GetIt.I.get(),
      authCubit: GetIt.I.get(),
      accountRepository: GetIt.I.get(),
      settingsCubit: GetIt.I.get(),
      userPrefsRepository: GetIt.I.get(),
    );
  }
}
