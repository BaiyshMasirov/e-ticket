import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/main/screens/settings/change_password/bloc/change_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

export 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final SnackbarCubit _snackbarCubit;
  final AccountRepository _accountRepository;

  ChangePasswordCubit._({
    required SnackbarCubit snackbarCubit,
    required AccountRepository accountRepository,
  })  : _snackbarCubit = snackbarCubit,
        _accountRepository = accountRepository,
        super(const ChangePasswordState.initial());

  Future<void> changePassword({
    required ChangePasswordCommandDto ChangePasswordCommandDto,
  }) async {
    emit(const ChangePasswordState.loading());

    final result =
        await _accountRepository.changePassword(ChangePasswordCommandDto);
    result.fold(
      (l) {
        emit(ChangePasswordState.failure(errorMessage: l.errorMessage));

        _snackbarCubit.showErrorSnackbar(message: l.errorMessage);
      },
      (r) {
        emit(const ChangePasswordState.success());
        _snackbarCubit.showSuccessSnackbar(
          message: LocaleKeys.password_updated_successfull.tr(),
        );
      },
    );
  }

  factory ChangePasswordCubit.initialize() {
    return ChangePasswordCubit._(
      snackbarCubit: GetIt.I.get(),
      accountRepository: GetIt.I.get(),
    );
  }
}
