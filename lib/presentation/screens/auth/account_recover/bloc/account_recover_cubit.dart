import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/screens/auth/account_recover/bloc/account_recover_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AccountRecoverCubit extends Cubit<AccountRecoverState> {
  final AccountRepository _accountRepository;
  final SnackbarCubit _snackbarCubit;
  final AuthCubit _authCubit;
  final SettingsCubit _settingsCubit;
  final UserPrefsRepository _userPrefsRepository;

  AccountRecoverCubit._({
    required AccountRepository accountRepository,
    required SnackbarCubit snackbarCubit,
    required AuthCubit authCubit,
    required SettingsCubit settingsCubit,
    required UserPrefsRepository userPrefsRepository,
  })  : _accountRepository = accountRepository,
        _snackbarCubit = snackbarCubit,
        _authCubit = authCubit,
        _settingsCubit = settingsCubit,
        _userPrefsRepository = userPrefsRepository,
        super(const AccountRecoverState.initial());

  static AccountRecoverCubit initialize() {
    return AccountRecoverCubit._(
      accountRepository: GetIt.I.get(),
      snackbarCubit: GetIt.I.get(),
      authCubit: GetIt.I.get(),
      settingsCubit: GetIt.I.get(),
      userPrefsRepository: GetIt.I.get(),
    );
  }

  Future<void> sendRecoverCode({
    required String email,
  }) async {
    _accountRepository.sendRecoveryCode(email: email);

    emit(const AccountRecoverState.confirmCodeSent());
  }

  Future<void> recoverAccount({
    required String email,
    required String code,
    required String password,
    required String passwordConfirm,
  }) async {
    emit(const AccountRecoverState.loading());

    final tokenResult = await _accountRepository.recoveryPassword(
      email: email,
      code: code,
      password: password,
      confirmPassword: passwordConfirm,
    );

    tokenResult.fold(
      (failure) => emit(
        AccountRecoverState.recoverError(errorMessage: failure.errorMessage),
      ),
      (userCreds) async {
        await _userPrefsRepository.needToSetPinCode(needToSetPinCode: true);

        _authCubit.setToken(credentials: userCreds);
        _settingsCubit.updateState();
        _snackbarCubit.showSuccessSnackbar(
          message: LocaleKeys.confirm_success.tr(),
        );

        emit(const AccountRecoverState.recoverSuccess());
      },
    );
  }
}
