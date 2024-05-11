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
      status: $enumDecodeNullable(_$EventStatusEnumMap, json['status']),
      date: const DateTimeUTCSerializer().fromJson(json['date'] as String?),
    );

Map<String, dynamic> _$$EventsFilterImplToJson(_$EventsFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type?.toJson());
  writeNotNull('status', _$EventStatusEnumMap[instance.status]);
  writeNotNull('date', const DateTimeUTCSerializer().toJson(instance.date));
  return val;
}

const _$EventStatusEnumMap = {
  EventStatus.none: 0,
  EventStatus.inAwait: 1,
  EventStatus.inProcess: 2,
  EventStatus.active: 3,
  EventStatus.inActive: 4,
  EventStatus.unknown: 'unknown',
};
