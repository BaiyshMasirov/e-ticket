// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_command_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginCommandDtoImpl _$$LoginCommandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginCommandDtoImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      firebaseToken: json['firebaseToken'] as String?,
    );

Map<String, dynamic> _$$LoginCommandDtoImplToJson(
        _$LoginCommandDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firebaseToken': instance.firebaseToken,
    };
