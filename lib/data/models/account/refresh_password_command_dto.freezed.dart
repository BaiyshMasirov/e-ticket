// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_password_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshPasswordCommandDto _$RefreshPasswordCommandDtoFromJson(
    Map<String, dynamic> json) {
  return _RefreshPasswordCommandDto.fromJson(json);
}

/// @nodoc
mixin _$RefreshPasswordCommandDto {
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshPasswordCommandDtoCopyWith<RefreshPasswordCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshPasswordCommandDtoCopyWith<$Res> {
  factory $RefreshPasswordCommandDtoCopyWith(RefreshPasswordCommandDto value,
          $Res Function(RefreshPasswordCommandDto) then) =
      _$RefreshPasswordCommandDtoCopyWithImpl<$Res, RefreshPasswordCommandDto>;
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? password,
      String? confirmPassword});
}

/// @nodoc
class _$RefreshPasswordCommandDtoCopyWithImpl<$Res,
        $Val extends RefreshPasswordCommandDto>
    implements $RefreshPasswordCommandDtoCopyWith<$Res> {
  _$RefreshPasswordCommandDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$RefreshPasswordCommandDtoImplCopyWith<$Res>
    implements $RefreshPasswordCommandDtoCopyWith<$Res> {
  factory _$$RefreshPasswordCommandDtoImplCopyWith(
          _$RefreshPasswordCommandDtoImpl value,
          $Res Function(_$RefreshPasswordCommandDtoImpl) then) =
      __$$RefreshPasswordCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? phoneNumber,
      String? password,
      String? confirmPassword});
}

/// @nodoc
class __$$RefreshPasswordCommandDtoImplCopyWithImpl<$Res>
    extends _$RefreshPasswordCommandDtoCopyWithImpl<$Res,
        _$RefreshPasswordCommandDtoImpl>
    implements _$$RefreshPasswordCommandDtoImplCopyWith<$Res> {
  __$$RefreshPasswordCommandDtoImplCopyWithImpl(
      _$RefreshPasswordCommandDtoImpl _value,
      $Res Function(_$RefreshPasswordCommandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$RefreshPasswordCommandDtoImpl(
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
class _$RefreshPasswordCommandDtoImpl extends _RefreshPasswordCommandDto {
  const _$RefreshPasswordCommandDtoImpl(
      {required this.email,
      required this.phoneNumber,
      required this.password,
      required this.confirmPassword})
      : super._();

  factory _$RefreshPasswordCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshPasswordCommandDtoImplFromJson(json);

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
    return 'RefreshPasswordCommandDto(email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshPasswordCommandDtoImpl &&
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
  _$$RefreshPasswordCommandDtoImplCopyWith<_$RefreshPasswordCommandDtoImpl>
      get copyWith => __$$RefreshPasswordCommandDtoImplCopyWithImpl<
          _$RefreshPasswordCommandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshPasswordCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _RefreshPasswordCommandDto extends RefreshPasswordCommandDto {
  const factory _RefreshPasswordCommandDto(
          {required final String? email,
          required final String? phoneNumber,
          required final String? password,
          required final String? confirmPassword}) =
      _$RefreshPasswordCommandDtoImpl;
  const _RefreshPasswordCommandDto._() : super._();

  factory _RefreshPasswordCommandDto.fromJson(Map<String, dynamic> json) =
      _$RefreshPasswordCommandDtoImpl.fromJson;

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
  _$$RefreshPasswordCommandDtoImplCopyWith<_$RefreshPasswordCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
