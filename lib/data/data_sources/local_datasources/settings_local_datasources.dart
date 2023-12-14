import 'dart:convert';
import 'dart:ui';

import 'package:eticket/data/data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _storageSettingsKey = '_storageSettingsKey';

class SettingsLocalDatasource {
  final SharedPreferences _sharedPreferences;
  late StorageSettings _storageSettings;

  SettingsLocalDatasource({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  Future<void> read() async {
    final storageSettingsString =
        _sharedPreferences.getString(_storageSettingsKey);

    if (storageSettingsString == null) {
      _storageSettings = const StorageSettings();

      return;
    }

    try {
      _storageSettings = StorageSettings.fromJson(
        jsonDecode(storageSettingsString),
      );
    } catch (e) {
      _storageSettings = const StorageSettings();
    }
  }

  Future<void> _save() async {
    await _sharedPreferences.setString(
      _storageSettingsKey,
      jsonEncode(_storageSettings.toJson()),
    );
  }

  Future<void> clear() async {
    _storageSettings = const StorageSettings();
    await _sharedPreferences.remove(_storageSettingsKey);
  }

  StorageSettings getSettings() {
    return _storageSettings;
  }

  Future<void> setLocale({required Locale locale}) async {
    _storageSettings = _storageSettings.copyWith(
      locale: locale.languageCode,
    );

    await _save();
  }

  Future<void> setThemeMode({
    required ThemeMode themeMode,
  }) async {
    _storageSettings = _storageSettings.copyWith(
      themeMode: themeMode,
    );

    await _save();
  }
}
