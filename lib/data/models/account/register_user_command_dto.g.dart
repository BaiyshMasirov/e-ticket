// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_command_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterUserCommandDtoImpl _$$RegisterUserCommandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserCommandDtoImpl(
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$RegisterUserCommandDtoImplToJson(
    _$RegisterUserCommandDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('middleName', instance.middleName);
  writeNotNull('password', instance.password);
  writeNotNull('phoneNumber', instance.phoneNumber);
  return val;
}
