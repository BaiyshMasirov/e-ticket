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
      status: $enumDecode(_$EventStatusEnumMap, json['status'],
          unknownValue: EventStatus.unknown),
      ageLimit: json['ageLimit'] as int,
      minPrice: (json['minPrice'] as num).toDouble(),
      sold: json['sold'] as int,
      count: json['count'] as int,
      locationName: json['locationName'] as String?,
      locationId: json['locationId'] as String,
      locationType: $enumDecode(_$LocationTypeEnumMap, json['locationType'],
          unknownValue: LocationType.unknown),
      poster: json['poster'] as String?,
      type: json['type'] as int,
      video: json['video'] as String?,
      image: json['image'] as String?,
      dateRange: DateTimeUTCSerializer.fromListJson(json['dateRange'] as List),
    );

Map<String, dynamic> _$$EventDtoImplToJson(_$EventDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  val['status'] = _$EventStatusEnumMap[instance.status]!;
  val['ageLimit'] = instance.ageLimit;
  val['minPrice'] = instance.minPrice;
  val['sold'] = instance.sold;
  val['count'] = instance.count;
  writeNotNull('locationName', instance.locationName);
  val['locationId'] = instance.locationId;
  val['locationType'] = _$LocationTypeEnumMap[instance.locationType]!;
  writeNotNull('poster', instance.poster);
  val['type'] = instance.type;
  writeNotNull('video', instance.video);
  writeNotNull('image', instance.image);
  val['dateRange'] = DateTimeUTCSerializer.toListJson(instance.dateRange);
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

const _$LocationTypeEnumMap = {
  LocationType.noSeating: 0,
  LocationType.sportPalace: 1,
  LocationType.bishkekArena: 2,
  LocationType.spartakStadium: 3,
  LocationType.balletTheater: 4,
  LocationType.philarmonic: 5,
  LocationType.ruDramTheater: 6,
  LocationType.kgDramTheater: 7,
  LocationType.nationalTheater: 8,
  LocationType.mapleLeaf: 9,
  LocationType.unknown: 'unknown',
};
