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
        _$RegisterUserCommandDtoImpl instance) =>
    <String, dynamic>{
      if (instance.email case final value?) 'email': value,
      if (instance.firstName case final value?) 'firstName': value,
      if (instance.lastName case final value?) 'lastName': value,
      if (instance.middleName case final value?) 'middleName': value,
      if (instance.password case final value?) 'password': value,
      if (instance.phoneNumber case final value?) 'phoneNumber': value,
    };
