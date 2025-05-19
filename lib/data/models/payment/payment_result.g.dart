// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResultImpl _$$PaymentResultImplFromJson(Map<String, dynamic> json) =>
    _$PaymentResultImpl(
      succeded: json['succeded'] as bool,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      link: json['link'] as String?,
      redirectUrl: json['redirectUrl'] as String?,
    );

Map<String, dynamic> _$$PaymentResultImplToJson(_$PaymentResultImpl instance) =>
    <String, dynamic>{
      'succeded': instance.succeded,
      'messages': instance.messages,
      if (instance.link case final value?) 'link': value,
      if (instance.redirectUrl case final value?) 'redirectUrl': value,
    };
