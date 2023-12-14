import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_state.dart';
import 'package:flutter/material.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SettingsRepository _settingsRepository;
  final AuthRepository _authRepository;

  SettingsCubit({
    required SettingsRepository settingsRepository,
    required AuthRepository authRepository,
  })  : _settingsRepository = settingsRepository,
        _authRepository = authRepository,
        super(SettingsState(
          themeMode: settingsRepository.getSettings().themeMode,
          locale: settingsRepository.getSettings().locale,
          isUserAdmin: false,
        ));

  Future<void> updateState() async {
    final isUserAdmin = await _authRepository.isUserAdmin();

    emit(state.copyWith(isUserAdmin: isUserAdmin));
  }

  Future<void> setLocale({
    required Locale locale,
  }) async {
    _settingsRepository.setLocale(locale: locale);

    emit(state.copyWith(locale: locale.languageCode));
  }

  Future<void> setThemeMode({
    required ThemeMode themeMode,
  }) async {
    _settingsRepository.setThemeMode(themeMode: themeMode);

    emit(state.copyWith(themeMode: themeMode));
  }
}
