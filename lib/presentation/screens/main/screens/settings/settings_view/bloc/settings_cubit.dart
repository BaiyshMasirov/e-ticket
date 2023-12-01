import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:eticket/presentation/screens/main/screens/settings/settings_view/bloc/settings_state.dart';
import 'package:get_it/get_it.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final AuthRepository _authRepository;

  SettingsCubit._({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SettingsState(
          isUserAdmin: false,
        ));

  Future<void> updateState() async {
    final isUserAdmin = await _authRepository.isUserAdmin();

    emit(SettingsState(isUserAdmin: isUserAdmin));
  }

  factory SettingsCubit.initialize() {
    return SettingsCubit._(
      authRepository: GetIt.I.get(),
    );
  }
}
