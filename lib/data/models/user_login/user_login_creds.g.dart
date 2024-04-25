// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_creds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginCredsImpl _$$UserLoginCredsImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginCredsImpl(
      login: json['login'] as String? ?? '',
      password: json['password'] as String? ?? '',
      isRememberMe: json['isRememberMe'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserLoginCredsImplToJson(
        _$UserLoginCredsImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'isRememberMe': instance.isRememberMe,
    };
