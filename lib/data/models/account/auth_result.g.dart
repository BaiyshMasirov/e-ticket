// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResultImpl _$$AuthResultImplFromJson(Map<String, dynamic> json) =>
    _$AuthResultImpl(
      succeed: json['succeed'] as bool,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      token: json['token'] == null
          ? null
          : ApiUserTokenDto.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResultImplToJson(_$AuthResultImpl instance) =>
    <String, dynamic>{
      'succeed': instance.succeed,
      'messages': instance.messages,
      if (instance.token?.toJson() case final value?) 'token': value,
    };
