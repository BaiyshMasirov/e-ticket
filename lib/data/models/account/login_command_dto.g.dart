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
    _$LoginCommandDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  writeNotNull('firebaseToken', instance.firebaseToken);
  return val;
}
