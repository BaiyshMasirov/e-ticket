// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_password_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecoveryPasswordCommandDto _$RecoveryPasswordCommandDtoFromJson(
    Map<String, dynamic> json) {
  return _RecoveryPasswordCommandDto.fromJson(json);
}

/// @nodoc
mixin _$RecoveryPasswordCommandDto {
  String get code => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecoveryPasswordCommandDtoCopyWith<RecoveryPasswordCommandDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryPasswordCommandDtoCopyWith<$Res> {
  factory $RecoveryPasswordCommandDtoCopyWith(RecoveryPasswordCommandDto value,
          $Res Function(RecoveryPasswordCommandDto) then) =
      _$RecoveryPasswordCommandDtoCopyWithImpl<$Res,
          RecoveryPasswordCommandDto>;
  @useResult
  $Res call(
      {String code, String email, String password, String confirmPassword});
}

/// @nodoc
class _$RecoveryPasswordCommandDtoCopyWithImpl<$Res,
        $Val extends RecoveryPasswordCommandDto>
    implements $RecoveryPasswordCommandDtoCopyWith<$Res> {
  _$RecoveryPasswordCommandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoveryPasswordCommandDtoImplCopyWith<$Res>
    implements $RecoveryPasswordCommandDtoCopyWith<$Res> {
  factory _$$RecoveryPasswordCommandDtoImplCopyWith(
          _$RecoveryPasswordCommandDtoImpl value,
          $Res Function(_$RecoveryPasswordCommandDtoImpl) then) =
      __$$RecoveryPasswordCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code, String email, String password, String confirmPassword});
}

/// @nodoc
class __$$RecoveryPasswordCommandDtoImplCopyWithImpl<$Res>
    extends _$RecoveryPasswordCommandDtoCopyWithImpl<$Res,
        _$RecoveryPasswordCommandDtoImpl>
    implements _$$RecoveryPasswordCommandDtoImplCopyWith<$Res> {
  __$$RecoveryPasswordCommandDtoImplCopyWithImpl(
      _$RecoveryPasswordCommandDtoImpl _value,
      $Res Function(_$RecoveryPasswordCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$RecoveryPasswordCommandDtoImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoveryPasswordCommandDtoImpl extends _RecoveryPasswordCommandDto {
  const _$RecoveryPasswordCommandDtoImpl(
      {required this.code,
      required this.email,
      required this.password,
      required this.confirmPassword})
      : super._();

  factory _$RecoveryPasswordCommandDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecoveryPasswordCommandDtoImplFromJson(json);

  @override
  final String code;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RecoveryPasswordCommandDto(code: $code, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryPasswordCommandDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, email, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoveryPasswordCommandDtoImplCopyWith<_$RecoveryPasswordCommandDtoImpl>
      get copyWith => __$$RecoveryPasswordCommandDtoImplCopyWithImpl<
          _$RecoveryPasswordCommandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoveryPasswordCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _RecoveryPasswordCommandDto extends RecoveryPasswordCommandDto {
  const factory _RecoveryPasswordCommandDto(
          {required final String code,
          required final String email,
          required final String password,
          required final String confirmPassword}) =
      _$RecoveryPasswordCommandDtoImpl;
  const _RecoveryPasswordCommandDto._() : super._();

  factory _RecoveryPasswordCommandDto.fromJson(Map<String, dynamic> json) =
      _$RecoveryPasswordCommandDtoImpl.fromJson;

  @override
  String get code;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$RecoveryPasswordCommandDtoImplCopyWith<_$RecoveryPasswordCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
