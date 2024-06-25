// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPreference _$UserPreferenceFromJson(Map<String, dynamic> json) {
  return _UserPreference.fromJson(json);
}

/// @nodoc
mixin _$UserPreference {
  bool get isOnboardingShown => throw _privateConstructorUsedError;
  bool get isPrivacyPolicyAccepted => throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;
  bool get needToSetPinCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreferenceCopyWith<UserPreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferenceCopyWith<$Res> {
  factory $UserPreferenceCopyWith(
          UserPreference value, $Res Function(UserPreference) then) =
      _$UserPreferenceCopyWithImpl<$Res, UserPreference>;
  @useResult
  $Res call(
      {bool isOnboardingShown,
      bool isPrivacyPolicyAccepted,
      String pinCode,
      bool needToSetPinCode});
}

/// @nodoc
class _$UserPreferenceCopyWithImpl<$Res, $Val extends UserPreference>
    implements $UserPreferenceCopyWith<$Res> {
  _$UserPreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnboardingShown = null,
    Object? isPrivacyPolicyAccepted = null,
    Object? pinCode = null,
    Object? needToSetPinCode = null,
  }) {
    return _then(_value.copyWith(
      isOnboardingShown: null == isOnboardingShown
          ? _value.isOnboardingShown
          : isOnboardingShown // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivacyPolicyAccepted: null == isPrivacyPolicyAccepted
          ? _value.isPrivacyPolicyAccepted
          : isPrivacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      needToSetPinCode: null == needToSetPinCode
          ? _value.needToSetPinCode
          : needToSetPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPreferenceImplCopyWith<$Res>
    implements $UserPreferenceCopyWith<$Res> {
  factory _$$UserPreferenceImplCopyWith(_$UserPreferenceImpl value,
          $Res Function(_$UserPreferenceImpl) then) =
      __$$UserPreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isOnboardingShown,
      bool isPrivacyPolicyAccepted,
      String pinCode,
      bool needToSetPinCode});
}

/// @nodoc
class __$$UserPreferenceImplCopyWithImpl<$Res>
    extends _$UserPreferenceCopyWithImpl<$Res, _$UserPreferenceImpl>
    implements _$$UserPreferenceImplCopyWith<$Res> {
  __$$UserPreferenceImplCopyWithImpl(
      _$UserPreferenceImpl _value, $Res Function(_$UserPreferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnboardingShown = null,
    Object? isPrivacyPolicyAccepted = null,
    Object? pinCode = null,
    Object? needToSetPinCode = null,
  }) {
    return _then(_$UserPreferenceImpl(
      isOnboardingShown: null == isOnboardingShown
          ? _value.isOnboardingShown
          : isOnboardingShown // ignore: cast_nullable_to_non_nullable
              as bool,
      isPrivacyPolicyAccepted: null == isPrivacyPolicyAccepted
          ? _value.isPrivacyPolicyAccepted
          : isPrivacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      needToSetPinCode: null == needToSetPinCode
          ? _value.needToSetPinCode
          : needToSetPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreferenceImpl extends _UserPreference {
  const _$UserPreferenceImpl(
      {this.isOnboardingShown = false,
      this.isPrivacyPolicyAccepted = false,
      this.pinCode = '',
      this.needToSetPinCode = false})
      : super._();

  factory _$UserPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreferenceImplFromJson(json);

  @override
  @JsonKey()
  final bool isOnboardingShown;
  @override
  @JsonKey()
  final bool isPrivacyPolicyAccepted;
  @override
  @JsonKey()
  final String pinCode;
  @override
  @JsonKey()
  final bool needToSetPinCode;

  @override
  String toString() {
    return 'UserPreference(isOnboardingShown: $isOnboardingShown, isPrivacyPolicyAccepted: $isPrivacyPolicyAccepted, pinCode: $pinCode, needToSetPinCode: $needToSetPinCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferenceImpl &&
            (identical(other.isOnboardingShown, isOnboardingShown) ||
                other.isOnboardingShown == isOnboardingShown) &&
            (identical(
                    other.isPrivacyPolicyAccepted, isPrivacyPolicyAccepted) ||
                other.isPrivacyPolicyAccepted == isPrivacyPolicyAccepted) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.needToSetPinCode, needToSetPinCode) ||
                other.needToSetPinCode == needToSetPinCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isOnboardingShown,
      isPrivacyPolicyAccepted, pinCode, needToSetPinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferenceImplCopyWith<_$UserPreferenceImpl> get copyWith =>
      __$$UserPreferenceImplCopyWithImpl<_$UserPreferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreferenceImplToJson(
      this,
    );
  }
}

abstract class _UserPreference extends UserPreference {
  const factory _UserPreference(
      {final bool isOnboardingShown,
      final bool isPrivacyPolicyAccepted,
      final String pinCode,
      final bool needToSetPinCode}) = _$UserPreferenceImpl;
  const _UserPreference._() : super._();

  factory _UserPreference.fromJson(Map<String, dynamic> json) =
      _$UserPreferenceImpl.fromJson;

  @override
  bool get isOnboardingShown;
  @override
  bool get isPrivacyPolicyAccepted;
  @override
  String get pinCode;
  @override
  bool get needToSetPinCode;
  @override
  @JsonKey(ignore: true)
  _$$UserPreferenceImplCopyWith<_$UserPreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
