// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['userId'] as String?,
      Name: json['Name'] as String,
      Email: json['Email'] as String,
      PhoneNumber: json['PhoneNumber'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  val['Name'] = instance.Name;
  val['Email'] = instance.Email;
  val['PhoneNumber'] = instance.PhoneNumber;
  return val;
}
