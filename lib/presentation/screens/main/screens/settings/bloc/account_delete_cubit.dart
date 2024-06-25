import 'package:eticket/auth/authentication.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/main/screens/settings/bloc/account_delete_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';

class AccountDeleteCubit extends Cubit<AccountDeleteState> {
  final AccountRepository _accountRepository;
  final SnackbarCubit _snackbarCubit;
  final AuthCubit _authCubit;

  AccountDeleteCubit._({
    required AccountRepository accountRepository,
    required SnackbarCubit snackbarCubit,
    required AuthCubit authCubit,
  })  : _accountRepository = accountRepository,
        _snackbarCubit = snackbarCubit,
        _authCubit = authCubit,
        super(const AccountDeleteState.initial());

  Future<void> deleteAccount() async {
    final result = await _accountRepository.deleteAccount();

    result.fold(
      (failure) {
        emit(AccountDeleteState.failed(errorMessage: failure.errorMessage));
        _snackbarCubit.showErrorSnackbar(message: failure.errorMessage);
      },
      (success) {
        emit(const AccountDeleteState.success());
        _authCubit.signOut();
      },
    );
  }

  factory AccountDeleteCubit.initialize() {
    return AccountDeleteCubit._(
      accountRepository: GetIt.I.get(),
      snackbarCubit: GetIt.I.get(),
      authCubit: GetIt.I.get(),
    );
  }
}
