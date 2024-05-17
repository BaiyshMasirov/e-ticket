// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingEntityImpl _$$BookingEntityImplFromJson(Map<String, dynamic> json) =>
    _$BookingEntityImpl(
      id: json['id'] as String,
      eventDate: DateTime.parse(json['eventDate'] as String),
      created: DateTime.parse(json['created'] as String),
      bookingStatus: $enumDecode(_$BookingStatusEnumMap, json['bookingStatus'],
          unknownValue: BookingStatus.unknown),
      eventStatus: $enumDecode(_$EventStatusEnumMap, json['eventStatus'],
          unknownValue: EventStatus.unknown),
      eventId: json['eventId'] as String,
      bookingSum: (json['bookingSum'] as num).toDouble(),
      locationType: $enumDecode(_$LocationTypeEnumMap, json['locationType'],
          unknownValue: LocationType.unknown),
      locationName: json['locationName'] as String,
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => TicketBookedEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventName: json['eventName'] as String?,
      eventImage: json['eventImage'] as String?,
    );

Map<String, dynamic> _$$BookingEntityImplToJson(_$BookingEntityImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'eventDate': instance.eventDate.toIso8601String(),
    'created': instance.created.toIso8601String(),
    'bookingStatus': _$BookingStatusEnumMap[instance.bookingStatus]!,
    'eventStatus': _$EventStatusEnumMap[instance.eventStatus]!,
    'eventId': instance.eventId,
    'bookingSum': instance.bookingSum,
    'locationType': _$LocationTypeEnumMap[instance.locationType]!,
    'locationName': instance.locationName,
    'tickets': instance.tickets.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventName', instance.eventName);
  writeNotNull('eventImage', instance.eventImage);
  return val;
}

const _$BookingStatusEnumMap = {
  BookingStatus.none: 0,
  BookingStatus.inAwait: 1,
  BookingStatus.inProcess: 2,
  BookingStatus.active: 3,
  BookingStatus.canceled: 4,
  BookingStatus.unknown: 'unknown',
};

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
