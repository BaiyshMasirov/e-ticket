// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageSettings _$StorageSettingsFromJson(Map<String, dynamic> json) {
  return _StorageSettings.fromJson(json);
}

/// @nodoc
mixin _$StorageSettings {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageSettingsCopyWith<StorageSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageSettingsCopyWith<$Res> {
  factory $StorageSettingsCopyWith(
          StorageSettings value, $Res Function(StorageSettings) then) =
      _$StorageSettingsCopyWithImpl<$Res, StorageSettings>;
  @useResult
  $Res call({ThemeMode themeMode, String locale});
}

/// @nodoc
class _$StorageSettingsCopyWithImpl<$Res, $Val extends StorageSettings>
    implements $StorageSettingsCopyWith<$Res> {
  _$StorageSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageSettingsImplCopyWith<$Res>
    implements $StorageSettingsCopyWith<$Res> {
  factory _$$StorageSettingsImplCopyWith(_$StorageSettingsImpl value,
          $Res Function(_$StorageSettingsImpl) then) =
      __$$StorageSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, String locale});
}

/// @nodoc
class __$$StorageSettingsImplCopyWithImpl<$Res>
    extends _$StorageSettingsCopyWithImpl<$Res, _$StorageSettingsImpl>
    implements _$$StorageSettingsImplCopyWith<$Res> {
  __$$StorageSettingsImplCopyWithImpl(
      _$StorageSettingsImpl _value, $Res Function(_$StorageSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? locale = null,
  }) {
    return _then(_$StorageSettingsImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageSettingsImpl extends _StorageSettings {
  const _$StorageSettingsImpl(
      {this.themeMode = ThemeMode.dark, this.locale = 'ru'})
      : super._();

  factory _$StorageSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageSettingsImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final String locale;

  @override
  String toString() {
    return 'StorageSettings(themeMode: $themeMode, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageSettingsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageSettingsImplCopyWith<_$StorageSettingsImpl> get copyWith =>
      __$$StorageSettingsImplCopyWithImpl<_$StorageSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageSettingsImplToJson(
      this,
    );
  }
}

abstract class _StorageSettings extends StorageSettings {
  const factory _StorageSettings(
      {final ThemeMode themeMode, final String locale}) = _$StorageSettingsImpl;
  const _StorageSettings._() : super._();

  factory _StorageSettings.fromJson(Map<String, dynamic> json) =
      _$StorageSettingsImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$$StorageSettingsImplCopyWith<_$StorageSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
