import 'package:eticket/auth/authentication.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/screens/auth/register/bloc/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

export 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final SnackbarCubit _snackbarCubit;
  final AccountRepository _accountRepository;

  RegisterCubit._({
    required SnackbarCubit snackbarCubit,
    required AccountRepository accountRepository,
  })  : _snackbarCubit = snackbarCubit,
        _accountRepository = accountRepository,
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
      (result) async {
        if (result.succeed && result.message != null) {
          _snackbarCubit.showSuccessSnackbar(message: result.message!);

          emit(RegisterState.success(
            login: registerCommandDto.email ?? '',
            password: registerCommandDto.password ?? '',
          ));
        } else {
          emit(RegisterState.failure(errorMessage: result.message));

          _snackbarCubit.showErrorSnackbar(message: result.message);
        }
      },
    );
  }

  factory RegisterCubit.initialize() {
    return RegisterCubit._(
      snackbarCubit: GetIt.I.get(),
      accountRepository: GetIt.I.get(),
    );
  }
}
