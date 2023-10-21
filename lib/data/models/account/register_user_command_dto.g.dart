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
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
    };
