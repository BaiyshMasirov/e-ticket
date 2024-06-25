import 'package:eticket/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const AppSettings._();

  const factory AppSettings({
    @Default(ThemeMode.dark) ThemeMode themeMode,
    @Default('ru') String locale,
  }) = _AppSettings;

  factory AppSettings.fromJson(Json json) => _$AppSettingsFromJson(json);
}
