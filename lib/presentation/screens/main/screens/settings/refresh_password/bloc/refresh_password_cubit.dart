import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/main/screens/settings/refresh_password/bloc/refresh_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

export 'refresh_password_state.dart';

class RefreshPasswordCubit extends Cubit<RefreshPasswordState> {
  final SnackbarCubit _snackbarCubit;
  final AccountRepository _accountRepository;

  RefreshPasswordCubit._({
    required SnackbarCubit snackbarCubit,
    required AccountRepository accountRepository,
  })  : _snackbarCubit = snackbarCubit,
        _accountRepository = accountRepository,
        super(const RefreshPasswordState.initial());

  Future<void> refreshPassword({
    required RefreshPasswordCommandDto refreshPasswordCommandDto,
  }) async {
    emit(const RefreshPasswordState.loading());

    final result =
        await _accountRepository.refreshPassword(refreshPasswordCommandDto);
    result.fold(
      (l) {
        emit(RefreshPasswordState.failure(errorMessage: l.errorMessage));

        _snackbarCubit.showErrorSnackbar(message: l.errorMessage);
      },
      (r) {
        emit(const RefreshPasswordState.success());
        _snackbarCubit.showSuccessSnackbar(
          message: LocaleKeys.password_updated_successfull.tr(),
        );
      },
    );
  }

  factory RefreshPasswordCubit.initialize() {
    return RefreshPasswordCubit._(
      snackbarCubit: GetIt.I.get(),
      accountRepository: GetIt.I.get(),
    );
  }
}
