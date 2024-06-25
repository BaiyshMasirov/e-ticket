// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordCommandDto _$ChangePasswordCommandDtoFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordCommandDto.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordCommandDto {
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordCommandDtoCopyWith<ChangePasswordCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordCommandDtoCopyWith<$Res> {
  factory $ChangePasswordCommandDtoCopyWith(ChangePasswordCommandDto value,
          $Res Function(ChangePasswordCommandDto) then) =
      _$ChangePasswordCommandDtoCopyWithImpl<$Res, ChangePasswordCommandDto>;
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? password,
      String? confirmPassword});
}

/// @nodoc
class _$ChangePasswordCommandDtoCopyWithImpl<$Res,
        $Val extends ChangePasswordCommandDto>
    implements $ChangePasswordCommandDtoCopyWith<$Res> {
  _$ChangePasswordCommandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordCommandDtoImplCopyWith<$Res>
    implements $ChangePasswordCommandDtoCopyWith<$Res> {
  factory _$$ChangePasswordCommandDtoImplCopyWith(
          _$ChangePasswordCommandDtoImpl value,
          $Res Function(_$ChangePasswordCommandDtoImpl) then) =
      __$$ChangePasswordCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? password,
      String? confirmPassword});
}

/// @nodoc
class __$$ChangePasswordCommandDtoImplCopyWithImpl<$Res>
    extends _$ChangePasswordCommandDtoCopyWithImpl<$Res,
        _$ChangePasswordCommandDtoImpl>
    implements _$$ChangePasswordCommandDtoImplCopyWith<$Res> {
  __$$ChangePasswordCommandDtoImplCopyWithImpl(
      _$ChangePasswordCommandDtoImpl _value,
      $Res Function(_$ChangePasswordCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$ChangePasswordCommandDtoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordCommandDtoImpl extends _ChangePasswordCommandDto {
  const _$ChangePasswordCommandDtoImpl(
      {required this.email,
      required this.phoneNumber,
      required this.password,
      required this.confirmPassword})
      : super._();

  factory _$ChangePasswordCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordCommandDtoImplFromJson(json);

  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final String? confirmPassword;

  @override
  String toString() {
    return 'ChangePasswordCommandDto(email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordCommandDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phoneNumber, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordCommandDtoImplCopyWith<_$ChangePasswordCommandDtoImpl>
      get copyWith => __$$ChangePasswordCommandDtoImplCopyWithImpl<
          _$ChangePasswordCommandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordCommandDto extends ChangePasswordCommandDto {
  const factory _ChangePasswordCommandDto(
      {required final String? email,
      required final String? phoneNumber,
      required final String? password,
      required final String? confirmPassword}) = _$ChangePasswordCommandDtoImpl;
  const _ChangePasswordCommandDto._() : super._();

  factory _ChangePasswordCommandDto.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordCommandDtoImpl.fromJson;

  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordCommandDtoImplCopyWith<_$ChangePasswordCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
