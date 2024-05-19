import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:flutter/material.dart';

class AppSettingsRepository {
  final AppSettingsLocalSource _appSettingsLocalSource;

  AppSettingsRepository({
    required AppSettingsLocalSource appSettingsLocalSource,
  }) : _appSettingsLocalSource = appSettingsLocalSource;

  AppSettings getAppSettings() => _appSettingsLocalSource.getAppSettings();

  Future<void> setThemeMode({
    required ThemeMode themeMode,
  }) async =>
      await _appSettingsLocalSource.setThemeMode(themeMode: themeMode);

  Future<void> setLocale({
    required Locale locale,
  }) async =>
      await _appSettingsLocalSource.setLocale(locale: locale);

  Future<void> clear() async => await _appSettingsLocalSource.clear();
}
