import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/auth/account_confirm/bloc/account_confirm_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AccountConfirmCubit extends Cubit<AccountConfirmState> {
  final AccountRepository _accountRepository;

  AccountConfirmCubit._({required AccountRepository accountRepository})
      : _accountRepository = accountRepository,
        super(const AccountConfirmState.initial());

  factory AccountConfirmCubit.initialize() {
    return AccountConfirmCubit._(
      accountRepository: GetIt.I.get(),
    );
  }

  Future<void> confirmAccount({
    required String email,
    required String code,
  }) async {
    final tokenResult = await _accountRepository.confirmAccount(
      email: email,
      code: code,
    );

    tokenResult.fold(
      (failure) => emit(
        AccountConfirmState.failure(errorMessage: failure.errorMessage),
      ),
      (resultOk) {
        final token = resultOk.token;

        if (token == null || !resultOk.succeed) {
          emit(AccountConfirmState.failure(errorMessage: resultOk.message));

          return;
        }

        emit(AccountConfirmState.success(tokenData: token));
      },
    );
  }
}
