import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/pin_code/pin_code_create/bloc/pin_code_create_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PinCodeCreateCubit extends Cubit<PinCodeCreateState> {
  final UserPrefsRepository _userPrefsRepository;

  PinCodeCreateCubit._({
    required UserPrefsRepository userPrefsRepository,
  })  : _userPrefsRepository = userPrefsRepository,
        super(const PinCodeCreateState.initial()) {
    _userPrefsRepository.needToSetPinCode(needToSetPinCode: false);
  }

  Future<void> savePinCode({
    required String pinCode,
  }) async {
    await _userPrefsRepository.setPinCode(pinCode: pinCode);

    emit(const PinCodeCreateState.success());
  }

  factory PinCodeCreateCubit.initialize() {
    return PinCodeCreateCubit._(
      userPrefsRepository: GetIt.I.get(),
    );
  }
}
