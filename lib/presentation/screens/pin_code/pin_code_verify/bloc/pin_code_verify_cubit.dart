import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_verify/bloc/pin_code_verify_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';

class PinCodeVerifyCubit extends Cubit<PinCodeVerifyState> {
  final UserPrefsRepository _userPrefsRepository;
  final LocalAuthentication _localAuthentication;
  final SnackbarCubit _snackbarCubit;

  PinCodeVerifyCubit._({
    required UserPrefsRepository userPrefsRepository,
    required LocalAuthentication localAuthentication,
    required SnackbarCubit snackbarCubit,
  })  : _userPrefsRepository = userPrefsRepository,
        _localAuthentication = localAuthentication,
        _snackbarCubit = snackbarCubit,
        super(const PinCodeVerifyState.initial()) {
    tryAuthenticateWithBiometric();
  }

  Future<void> verifyPinCode({
    required String enteredPinCode,
  }) async {
    final userPinCode = _userPrefsRepository.getPinCode();

    if (userPinCode == enteredPinCode) {
      emit(const PinCodeVerifyState.success());
    } else {
      emit(const PinCodeVerifyState.error());
      _snackbarCubit.showErrorSnackbar(message: LocaleKeys.wrong_pin_code.tr());
    }
  }

  factory PinCodeVerifyCubit.initialize() {
    return PinCodeVerifyCubit._(
      userPrefsRepository: GetIt.I.get(),
      snackbarCubit: GetIt.I.get(),
      localAuthentication: LocalAuthentication(),
    );
  }

  Future<void> tryAuthenticateWithBiometric() async {
    try {
      final didAuth = await _localAuthentication.authenticate(
          localizedReason: LocaleKeys
              .authentication_is_required_to_log_in_to_the_application
              .tr(),
          options: const AuthenticationOptions(biometricOnly: true));

      if (didAuth) {
        emit(const PinCodeVerifyState.success());
      } else {
        emit(const PinCodeVerifyState.error());
      }
    } catch (e) {
      emit(const PinCodeVerifyState.error());
    }
  }
}
