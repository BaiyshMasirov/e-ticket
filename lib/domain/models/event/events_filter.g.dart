// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsFilterImpl _$$EventsFilterImplFromJson(Map<String, dynamic> json) =>
    _$EventsFilterImpl(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      status: $enumDecode(_$EventStatusEnumMap, json['status']),
      date: const DateTimeUTCSerializer().fromJson(json['date'] as String?),
    );

Map<String, dynamic> _$$EventsFilterImplToJson(_$EventsFilterImpl instance) {
  final val = <String, dynamic>{
    'type': _$EventTypeEnumMap[instance.type]!,
    'status': _$EventStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date', const DateTimeUTCSerializer().toJson(instance.date));
  return val;
}

const _$EventTypeEnumMap = {
  EventType.none: 0,
  EventType.concert: 1,
  EventType.tourism: 2,
  EventType.sport: 3,
  EventType.cinema: 4,
  EventType.business: 5,
  EventType.museum: 6,
  EventType.theater: 7,
  EventType.unknown: 'unknown',
};

const _$EventStatusEnumMap = {
  EventStatus.none: 0,
  EventStatus.inAwait: 1,
  EventStatus.inProcess: 2,
  EventStatus.active: 3,
  EventStatus.inActive: 4,
  EventStatus.unknown: 'unknown',
};
