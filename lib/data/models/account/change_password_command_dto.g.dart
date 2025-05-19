// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_command_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordCommandDtoImpl _$$ChangePasswordCommandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordCommandDtoImpl(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$$ChangePasswordCommandDtoImplToJson(
        _$ChangePasswordCommandDtoImpl instance) =>
    <String, dynamic>{
      if (instance.email case final value?) 'email': value,
      if (instance.phoneNumber case final value?) 'phoneNumber': value,
      if (instance.password case final value?) 'password': value,
      if (instance.confirmPassword case final value?) 'confirmPassword': value,
    };
