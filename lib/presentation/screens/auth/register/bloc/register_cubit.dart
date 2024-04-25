import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/screens/auth/register/bloc/register_cubit.dart';
import 'package:get_it/get_it.dart';

export 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final SnackbarCubit _snackbarCubit;
  final AuthCubit _authCubit;
  final SettingsCubit _settingsCubit;
  final AccountRepository _accountRepository;

  RegisterCubit._({
    required SnackbarCubit snackbarCubit,
    required AuthCubit authCubit,
    required SettingsCubit settingsCubit,
    required AccountRepository accountRepository,
  })  : _snackbarCubit = snackbarCubit,
        _authCubit = authCubit,
        _accountRepository = accountRepository,
        _settingsCubit = settingsCubit,
        super(const RegisterState.initial());

  Future<void> register({
    required RegisterUserCommandDto registerCommandDto,
  }) async {
    emit(const RegisterState.loading());

    final result = await _accountRepository.register(registerCommandDto);
    result.fold(
      (l) {
        emit(RegisterState.failure(errorMessage: l.errorMessage));
        _snackbarCubit.showErrorSnackbar(message: l.errorMessage);
      },
      (r) {
        emit(const RegisterState.success());
        _authCubit.setToken(credentials: r);
        _settingsCubit.updateState();
      },
    );
  }

  factory RegisterCubit.initialize() {
    return RegisterCubit._(
      snackbarCubit: GetIt.I.get(),
      authCubit: GetIt.I.get(),
      accountRepository: GetIt.I.get(),
      settingsCubit: GetIt.I.get(),
    );
  }
}
