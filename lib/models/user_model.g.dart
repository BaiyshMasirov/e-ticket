// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['userId'] as int?,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      contact: json['contact'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  val['fullName'] = instance.fullName;
  val['email'] = instance.email;
  val['address'] = instance.address;
  val['contact'] = instance.contact;
  val['role'] = _$UserRoleEnumMap[instance.role]!;
  return val;
}

const _$UserRoleEnumMap = {
  UserRole.ADMIN: 'admin',
  UserRole.API_USER: 'api_user',
  UserRole.SUPER_USER: 'super_user',
};
