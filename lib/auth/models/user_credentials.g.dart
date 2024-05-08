// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCredentialsImpl _$$UserCredentialsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCredentialsImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      accessTokenExpiresAt: const DateTimeUTCSerializer()
          .fromJson(json['accessTokenExpiresAt'] as String?),
      isAdmin: json['isAdmin'] as bool,
    );

Map<String, dynamic> _$$UserCredentialsImplToJson(
    _$UserCredentialsImpl instance) {
  final val = <String, dynamic>{
    'accessToken': instance.accessToken,
    'refreshToken': instance.refreshToken,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accessTokenExpiresAt',
      const DateTimeUTCSerializer().toJson(instance.accessTokenExpiresAt));
  val['isAdmin'] = instance.isAdmin;
  return val;
}
