import 'package:eticket/data/data.dart';
import 'package:flutter/material.dart';

class SettingsRepository {
  final SettingsLocalDatasource _settingsLocalDatasource;

  SettingsRepository({
    required SettingsLocalDatasource settingsLocalDatasource,
  }) : _settingsLocalDatasource = settingsLocalDatasource;

  StorageSettings getSettings() => _settingsLocalDatasource.getSettings();

  Future<void> setThemeMode({
    required ThemeMode themeMode,
  }) async =>
      await _settingsLocalDatasource.setThemeMode(themeMode: themeMode);

  Future<void> setLocale({
    required Locale locale,
  }) async =>
      await _settingsLocalDatasource.setLocale(locale: locale);

  Future<void> clear() async => await _settingsLocalDatasource.clear();
}
