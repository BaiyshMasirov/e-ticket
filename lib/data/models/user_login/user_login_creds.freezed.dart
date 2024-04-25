// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_creds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLoginCreds _$UserLoginCredsFromJson(Map<String, dynamic> json) {
  return _UserLoginCreds.fromJson(json);
}

/// @nodoc
mixin _$UserLoginCreds {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isRememberMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginCredsCopyWith<UserLoginCreds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginCredsCopyWith<$Res> {
  factory $UserLoginCredsCopyWith(
          UserLoginCreds value, $Res Function(UserLoginCreds) then) =
      _$UserLoginCredsCopyWithImpl<$Res, UserLoginCreds>;
  @useResult
  $Res call({String login, String password, bool isRememberMe});
}

/// @nodoc
class _$UserLoginCredsCopyWithImpl<$Res, $Val extends UserLoginCreds>
    implements $UserLoginCredsCopyWith<$Res> {
  _$UserLoginCredsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? isRememberMe = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isRememberMe: null == isRememberMe
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginCredsImplCopyWith<$Res>
    implements $UserLoginCredsCopyWith<$Res> {
  factory _$$UserLoginCredsImplCopyWith(_$UserLoginCredsImpl value,
          $Res Function(_$UserLoginCredsImpl) then) =
      __$$UserLoginCredsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password, bool isRememberMe});
}

/// @nodoc
class __$$UserLoginCredsImplCopyWithImpl<$Res>
    extends _$UserLoginCredsCopyWithImpl<$Res, _$UserLoginCredsImpl>
    implements _$$UserLoginCredsImplCopyWith<$Res> {
  __$$UserLoginCredsImplCopyWithImpl(
      _$UserLoginCredsImpl _value, $Res Function(_$UserLoginCredsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? isRememberMe = null,
  }) {
    return _then(_$UserLoginCredsImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isRememberMe: null == isRememberMe
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginCredsImpl extends _UserLoginCreds {
  const _$UserLoginCredsImpl(
      {this.login = '', this.password = '', this.isRememberMe = false})
      : super._();

  factory _$UserLoginCredsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginCredsImplFromJson(json);

  @override
  @JsonKey()
  final String login;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isRememberMe;

  @override
  String toString() {
    return 'UserLoginCreds(login: $login, password: $password, isRememberMe: $isRememberMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginCredsImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isRememberMe, isRememberMe) ||
                other.isRememberMe == isRememberMe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, password, isRememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginCredsImplCopyWith<_$UserLoginCredsImpl> get copyWith =>
      __$$UserLoginCredsImplCopyWithImpl<_$UserLoginCredsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginCredsImplToJson(
      this,
    );
  }
}

abstract class _UserLoginCreds extends UserLoginCreds {
  const factory _UserLoginCreds(
      {final String login,
      final String password,
      final bool isRememberMe}) = _$UserLoginCredsImpl;
  const _UserLoginCreds._() : super._();

  factory _UserLoginCreds.fromJson(Map<String, dynamic> json) =
      _$UserLoginCredsImpl.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  bool get isRememberMe;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginCredsImplCopyWith<_$UserLoginCredsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
