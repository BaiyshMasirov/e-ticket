// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginCommandDto _$LoginCommandDtoFromJson(Map<String, dynamic> json) {
  return _LoginCommandDto.fromJson(json);
}

/// @nodoc
mixin _$LoginCommandDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get firebaseToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCommandDtoCopyWith<LoginCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCommandDtoCopyWith<$Res> {
  factory $LoginCommandDtoCopyWith(
          LoginCommandDto value, $Res Function(LoginCommandDto) then) =
      _$LoginCommandDtoCopyWithImpl<$Res, LoginCommandDto>;
  @useResult
  $Res call({String email, String password, String? firebaseToken});
}

/// @nodoc
class _$LoginCommandDtoCopyWithImpl<$Res, $Val extends LoginCommandDto>
    implements $LoginCommandDtoCopyWith<$Res> {
  _$LoginCommandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firebaseToken = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCommandDtoImplCopyWith<$Res>
    implements $LoginCommandDtoCopyWith<$Res> {
  factory _$$LoginCommandDtoImplCopyWith(_$LoginCommandDtoImpl value,
          $Res Function(_$LoginCommandDtoImpl) then) =
      __$$LoginCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String? firebaseToken});
}

/// @nodoc
class __$$LoginCommandDtoImplCopyWithImpl<$Res>
    extends _$LoginCommandDtoCopyWithImpl<$Res, _$LoginCommandDtoImpl>
    implements _$$LoginCommandDtoImplCopyWith<$Res> {
  __$$LoginCommandDtoImplCopyWithImpl(
      _$LoginCommandDtoImpl _value, $Res Function(_$LoginCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firebaseToken = freezed,
  }) {
    return _then(_$LoginCommandDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginCommandDtoImpl extends _LoginCommandDto {
  const _$LoginCommandDtoImpl(
      {required this.email,
      required this.password,
      required this.firebaseToken})
      : super._();

  factory _$LoginCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginCommandDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? firebaseToken;

  @override
  String toString() {
    return 'LoginCommandDto(email: $email, password: $password, firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCommandDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, firebaseToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCommandDtoImplCopyWith<_$LoginCommandDtoImpl> get copyWith =>
      __$$LoginCommandDtoImplCopyWithImpl<_$LoginCommandDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _LoginCommandDto extends LoginCommandDto {
  const factory _LoginCommandDto(
      {required final String email,
      required final String password,
      required final String? firebaseToken}) = _$LoginCommandDtoImpl;
  const _LoginCommandDto._() : super._();

  factory _LoginCommandDto.fromJson(Map<String, dynamic> json) =
      _$LoginCommandDtoImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginCommandDtoImplCopyWith<_$LoginCommandDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
