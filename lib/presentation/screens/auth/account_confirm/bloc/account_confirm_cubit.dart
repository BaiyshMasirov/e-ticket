import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/screens/auth/account_confirm/bloc/account_confirm_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AccountConfirmCubit extends Cubit<AccountConfirmState> {
  final AccountRepository _accountRepository;
  final SnackbarCubit _snackbarCubit;
  final AuthCubit _authCubit;
  final SettingsCubit _settingsCubit;
  final UserPrefsRepository _userPrefsRepository;

  AccountConfirmCubit._({
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
        super(const AccountConfirmState.initial());

  factory AccountConfirmCubit.initialize() {
    return AccountConfirmCubit._(
      accountRepository: GetIt.I.get(),
      snackbarCubit: GetIt.I.get(),
      authCubit: GetIt.I.get(),
      settingsCubit: GetIt.I.get(),
      userPrefsRepository: GetIt.I.get(),
    );
  }

  Future<void> sendConfirmCode({
    required String email,
  }) async {
    _accountRepository.sendConfirmCode(email: email);
  }

  Future<void> confirmAccount({
    required String email,
    required String code,
  }) async {
    emit(const AccountConfirmState.loading());

    final tokenResult = await _accountRepository.confirmAccount(
      email: email,
      code: code,
    );

    tokenResult.fold(
      (failure) => emit(
        AccountConfirmState.failure(errorMessage: failure.errorMessage),
      ),
      (userCreds) async {
        await _userPrefsRepository.needToSetPinCode(needToSetPinCode: true);

        _authCubit.setToken(credentials: userCreds);
        _settingsCubit.updateState();
        _snackbarCubit.showSuccessSnackbar(
          message: LocaleKeys.confirm_success.tr(),
        );

        emit(AccountConfirmState.success(
          userCreds: userCreds,
          email: email,
        ));
      },
    );
  }
}
