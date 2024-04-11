// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorageSettingsImpl _$$StorageSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$StorageSettingsImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.dark,
      locale: json['locale'] as String? ?? 'ru',
    );

Map<String, dynamic> _$$StorageSettingsImplToJson(
        _$StorageSettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'locale': instance.locale,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
