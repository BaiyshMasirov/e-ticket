// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterUserCommandDto _$RegisterUserCommandDtoFromJson(
    Map<String, dynamic> json) {
  return _RegisterUserCommandDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserCommandDto {
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserCommandDtoCopyWith<RegisterUserCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserCommandDtoCopyWith<$Res> {
  factory $RegisterUserCommandDtoCopyWith(RegisterUserCommandDto value,
          $Res Function(RegisterUserCommandDto) then) =
      _$RegisterUserCommandDtoCopyWithImpl<$Res, RegisterUserCommandDto>;
  @useResult
  $Res call(
      {String? email,
      String? firstName,
      String? lastName,
      String? middleName,
      String? password,
      String? phoneNumber});
}

/// @nodoc
class _$RegisterUserCommandDtoCopyWithImpl<$Res,
        $Val extends RegisterUserCommandDto>
    implements $RegisterUserCommandDtoCopyWith<$Res> {
  _$RegisterUserCommandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? password = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserCommandDtoImplCopyWith<$Res>
    implements $RegisterUserCommandDtoCopyWith<$Res> {
  factory _$$RegisterUserCommandDtoImplCopyWith(
          _$RegisterUserCommandDtoImpl value,
          $Res Function(_$RegisterUserCommandDtoImpl) then) =
      __$$RegisterUserCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? firstName,
      String? lastName,
      String? middleName,
      String? password,
      String? phoneNumber});
}

/// @nodoc
class __$$RegisterUserCommandDtoImplCopyWithImpl<$Res>
    extends _$RegisterUserCommandDtoCopyWithImpl<$Res,
        _$RegisterUserCommandDtoImpl>
    implements _$$RegisterUserCommandDtoImplCopyWith<$Res> {
  __$$RegisterUserCommandDtoImplCopyWithImpl(
      _$RegisterUserCommandDtoImpl _value,
      $Res Function(_$RegisterUserCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? password = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$RegisterUserCommandDtoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserCommandDtoImpl extends _RegisterUserCommandDto {
  const _$RegisterUserCommandDtoImpl(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.middleName,
      required this.password,
      required this.phoneNumber})
      : super._();

  factory _$RegisterUserCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserCommandDtoImplFromJson(json);

  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? middleName;
  @override
  final String? password;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'RegisterUserCommandDto(email: $email, firstName: $firstName, lastName: $lastName, middleName: $middleName, password: $password, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserCommandDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, firstName, lastName,
      middleName, password, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserCommandDtoImplCopyWith<_$RegisterUserCommandDtoImpl>
      get copyWith => __$$RegisterUserCommandDtoImplCopyWithImpl<
          _$RegisterUserCommandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserCommandDto extends RegisterUserCommandDto {
  const factory _RegisterUserCommandDto(
      {required final String? email,
      required final String? firstName,
      required final String? lastName,
      required final String? middleName,
      required final String? password,
      required final String? phoneNumber}) = _$RegisterUserCommandDtoImpl;
  const _RegisterUserCommandDto._() : super._();

  factory _RegisterUserCommandDto.fromJson(Map<String, dynamic> json) =
      _$RegisterUserCommandDtoImpl.fromJson;

  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get middleName;
  @override
  String? get password;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserCommandDtoImplCopyWith<_$RegisterUserCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
