import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';
part 'settings_state.g.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    required ThemeMode themeMode,
    required String locale,
    required bool isUserAdmin,
  }) = _SettingsState;

  factory SettingsState.fromJson(Json json) => _$SettingsStateFromJson(json);
}
