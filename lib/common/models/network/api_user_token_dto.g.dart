// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiUserTokenDtoImpl _$$ApiUserTokenDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiUserTokenDtoImpl(
      jwtToken: json['jwtToken'] as String,
      rtToken: json['rtToken'] as String,
    );

Map<String, dynamic> _$$ApiUserTokenDtoImplToJson(
        _$ApiUserTokenDtoImpl instance) =>
    <String, dynamic>{
      'jwtToken': instance.jwtToken,
      'rtToken': instance.rtToken,
    };
