// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get middleName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String middleName,
      String password,
      String phoneNumber});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  final RegisterModel _value;
  // ignore: unused_field
  final $Res Function(RegisterModel) _then;

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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$_RegisterModelCopyWith(
          _$_RegisterModel value, $Res Function(_$_RegisterModel) then) =
      __$$_RegisterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String middleName,
      String password,
      String phoneNumber});
}

/// @nodoc
class __$$_RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res>
    implements _$$_RegisterModelCopyWith<$Res> {
  __$$_RegisterModelCopyWithImpl(
      _$_RegisterModel _value, $Res Function(_$_RegisterModel) _then)
      : super(_value, (v) => _then(v as _$_RegisterModel));

  @override
  _$_RegisterModel get _value => super._value as _$_RegisterModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? password = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_RegisterModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  const _$_RegisterModel(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.middleName,
      required this.password,
      required this.phoneNumber});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String middleName;
  @override
  final String password;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterModel(email: $email, firstName: $firstName, lastName: $lastName, middleName: $middleName, password: $password, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.middleName, middleName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(middleName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      __$$_RegisterModelCopyWithImpl<_$_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(this);
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
      {required final String email,
      required final String firstName,
      required final String lastName,
      required final String middleName,
      required final String password,
      required final String phoneNumber}) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get middleName;
  @override
  String get password;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterModelCopyWith<_$_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
