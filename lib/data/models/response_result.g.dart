// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseResultImpl _$$ResponseResultImplFromJson(Map<String, dynamic> json) =>
    _$ResponseResultImpl(
      succeed: json['succeed'] as bool,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseResultImplToJson(
        _$ResponseResultImpl instance) =>
    <String, dynamic>{
      'succeed': instance.succeed,
      'messages': instance.messages,
    };
