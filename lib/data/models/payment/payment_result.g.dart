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
    );

Map<String, dynamic> _$$PaymentResultImplToJson(_$PaymentResultImpl instance) {
  final val = <String, dynamic>{
    'succeded': instance.succeded,
    'messages': instance.messages,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('link', instance.link);
  return val;
}
