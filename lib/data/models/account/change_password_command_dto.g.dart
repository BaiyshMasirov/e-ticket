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
    _$ChangePasswordCommandDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('password', instance.password);
  writeNotNull('confirmPassword', instance.confirmPassword);
  return val;
}
