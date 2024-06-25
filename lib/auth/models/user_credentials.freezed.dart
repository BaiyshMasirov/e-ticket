// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCredentials _$UserCredentialsFromJson(Map<String, dynamic> json) {
  return _UserCredentials.fromJson(json);
}

/// @nodoc
mixin _$UserCredentials {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  @DateTimeUTCSerializer()
  DateTime? get accessTokenExpiresAt => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCredentialsCopyWith<UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsCopyWith<$Res> {
  factory $UserCredentialsCopyWith(
          UserCredentials value, $Res Function(UserCredentials) then) =
      _$UserCredentialsCopyWithImpl<$Res, UserCredentials>;
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      @DateTimeUTCSerializer() DateTime? accessTokenExpiresAt,
      bool isAdmin});
}

/// @nodoc
class _$UserCredentialsCopyWithImpl<$Res, $Val extends UserCredentials>
    implements $UserCredentialsCopyWith<$Res> {
  _$UserCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpiresAt = freezed,
    Object? isAdmin = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCredentialsImplCopyWith<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  factory _$$UserCredentialsImplCopyWith(_$UserCredentialsImpl value,
          $Res Function(_$UserCredentialsImpl) then) =
      __$$UserCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      @DateTimeUTCSerializer() DateTime? accessTokenExpiresAt,
      bool isAdmin});
}

/// @nodoc
class __$$UserCredentialsImplCopyWithImpl<$Res>
    extends _$UserCredentialsCopyWithImpl<$Res, _$UserCredentialsImpl>
    implements _$$UserCredentialsImplCopyWith<$Res> {
  __$$UserCredentialsImplCopyWithImpl(
      _$UserCredentialsImpl _value, $Res Function(_$UserCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpiresAt = freezed,
    Object? isAdmin = null,
  }) {
    return _then(_$UserCredentialsImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessTokenExpiresAt: freezed == accessTokenExpiresAt
          ? _value.accessTokenExpiresAt
          : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCredentialsImpl extends _UserCredentials {
  const _$UserCredentialsImpl(
      {required this.accessToken,
      required this.refreshToken,
      @DateTimeUTCSerializer() required this.accessTokenExpiresAt,
      required this.isAdmin})
      : super._();

  factory _$UserCredentialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCredentialsImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  @DateTimeUTCSerializer()
  final DateTime? accessTokenExpiresAt;
  @override
  final bool isAdmin;

  @override
  String toString() {
    return 'UserCredentials(accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCredentialsImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, refreshToken, accessTokenExpiresAt, isAdmin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCredentialsImplCopyWith<_$UserCredentialsImpl> get copyWith =>
      __$$UserCredentialsImplCopyWithImpl<_$UserCredentialsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCredentialsImplToJson(
      this,
    );
  }
}

abstract class _UserCredentials extends UserCredentials {
  const factory _UserCredentials(
      {required final String accessToken,
      required final String refreshToken,
      @DateTimeUTCSerializer() required final DateTime? accessTokenExpiresAt,
      required final bool isAdmin}) = _$UserCredentialsImpl;
  const _UserCredentials._() : super._();

  factory _UserCredentials.fromJson(Map<String, dynamic> json) =
      _$UserCredentialsImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @DateTimeUTCSerializer()
  DateTime? get accessTokenExpiresAt;
  @override
  bool get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$$UserCredentialsImplCopyWith<_$UserCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
