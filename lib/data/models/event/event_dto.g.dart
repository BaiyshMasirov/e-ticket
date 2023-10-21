// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDtoImpl _$$EventDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      status: $enumDecode(_$EventStatusEnumMap, json['status'],
          unknownValue: EventStatus.UNKNOWN),
      ageLimit: json['ageLimit'] as int,
      minPrice: (json['minPrice'] as num).toDouble(),
      sold: json['sold'] as int,
      count: json['count'] as int,
      locationName: json['locationName'] as String?,
      locationId: json['locationId'] as String,
      poster: json['poster'] as String?,
      type: $enumDecode(_$EventTypeEnumMap, json['type'],
          unknownValue: EventType.UNKNOWN),
      video: json['video'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$EventDtoImplToJson(_$EventDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'status': _$EventStatusEnumMap[instance.status]!,
      'ageLimit': instance.ageLimit,
      'minPrice': instance.minPrice,
      'sold': instance.sold,
      'count': instance.count,
      'locationName': instance.locationName,
      'locationId': instance.locationId,
      'poster': instance.poster,
      'type': _$EventTypeEnumMap[instance.type]!,
      'video': instance.video,
      'image': instance.image,
    };

const _$EventStatusEnumMap = {
  EventStatus.WTF0: 0,
  EventStatus.WTF1: 1,
  EventStatus.WTF2: 2,
  EventStatus.WTF3: 3,
  EventStatus.WTF4: 4,
  EventStatus.UNKNOWN: 'UNKNOWN',
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
