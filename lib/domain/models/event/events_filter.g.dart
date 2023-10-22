// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsFilterImpl _$$EventsFilterImplFromJson(Map<String, dynamic> json) =>
    _$EventsFilterImpl(
      type: $enumDecodeNullable(_$EventTypeEnumMap, json['type']),
      status: $enumDecodeNullable(_$EventStatusEnumMap, json['status']),
      date: const DateTimeUTCSerializer().fromJson(json['date'] as String?),
    );

Map<String, dynamic> _$$EventsFilterImplToJson(_$EventsFilterImpl instance) =>
    <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type],
      'status': _$EventStatusEnumMap[instance.status],
      'date': const DateTimeUTCSerializer().toJson(instance.date),
    };

const _$EventTypeEnumMap = {
  EventType.WTF0: 0,
  EventType.WTF1: 1,
  EventType.WTF2: 2,
  EventType.WTF3: 3,
  EventType.WTF4: 4,
  EventType.WTF5: 5,
  EventType.WTF6: 6,
  EventType.WTF7: 7,
  EventType.UNKNOWN: 'UNKNOWN',
};

const _$EventStatusEnumMap = {
  EventStatus.WTF0: 0,
  EventStatus.WTF1: 1,
  EventStatus.WTF2: 2,
  EventStatus.WTF3: 3,
  EventStatus.WTF4: 4,
  EventStatus.UNKNOWN: 'UNKNOWN',
};
