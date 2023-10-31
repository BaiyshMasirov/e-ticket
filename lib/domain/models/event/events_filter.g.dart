// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsFilterImpl _$$EventsFilterImplFromJson(Map<String, dynamic> json) =>
    _$EventsFilterImpl(
      type: json['type'] == null
          ? null
          : KeyValueMapDto.fromJson(json['type'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : KeyValueMapDto.fromJson(json['status'] as Map<String, dynamic>),
      date: const DateTimeUTCSerializer().fromJson(json['date'] as String?),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$EventsFilterImplToJson(_$EventsFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('date', const DateTimeUTCSerializer().toJson(instance.date));
  writeNotNull('text', instance.text);
  return val;
}
