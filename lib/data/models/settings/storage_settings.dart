import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_settings.freezed.dart';
part 'storage_settings.g.dart';

@freezed
class StorageSettings with _$StorageSettings {
  const StorageSettings._();

  const factory StorageSettings({
    @Default(ThemeMode.dark) ThemeMode themeMode,
    @Default('ru') String locale,
  }) = _StorageSettings;

  factory StorageSettings.fromJson(Json json) =>
      _$StorageSettingsFromJson(json);
}
