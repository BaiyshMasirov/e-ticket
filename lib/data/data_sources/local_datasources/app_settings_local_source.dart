import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eticket/common/common.dart';

const String _appSettingsLocalSource = '_appSettingsLocalSource';

class AppSettingsLocalSource {
  final SharedPreferences _sharedPreferences;
  late AppSettings _appSettings;

  AppSettingsLocalSource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  Future<void> read() async {
    final appSettingsString =
        _sharedPreferences.getString(_appSettingsLocalSource);

    if (appSettingsString == null) {
      _appSettings = const AppSettings();

      return;
    }

    try {
      _appSettings = AppSettings.fromJson(jsonDecode(appSettingsString));
    } catch (e) {
      _appSettings = const AppSettings();
    }
  }

  Future<void> _save() async {
    await _sharedPreferences.setString(
      _appSettingsLocalSource,
      jsonEncode(_appSettings.toJson()),
    );
  }

  Future<void> clear() async {
    _appSettings = const AppSettings();
    await _sharedPreferences.remove(_appSettingsLocalSource);
  }

  AppSettings getAppSettings() {
    return _appSettings;
  }

  Future<void> setLocale({required Locale locale}) async {
    _appSettings = _appSettings.copyWith(
      locale: locale.languageCode,
    );

    await _save();
  }

  Future<void> setThemeMode({
    required ThemeMode themeMode,
  }) async {
    _appSettings = _appSettings.copyWith(
      themeMode: themeMode,
    );

    await _save();
  }
}
