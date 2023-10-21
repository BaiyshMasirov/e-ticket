// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_password_command_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshPasswordCommandDtoImpl _$$RefreshPasswordCommandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshPasswordCommandDtoImpl(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$$RefreshPasswordCommandDtoImplToJson(
        _$RefreshPasswordCommandDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
