// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_password_command_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecoveryPasswordCommandDtoImpl _$$RecoveryPasswordCommandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RecoveryPasswordCommandDtoImpl(
      code: json['code'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );

Map<String, dynamic> _$$RecoveryPasswordCommandDtoImplToJson(
        _$RecoveryPasswordCommandDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
