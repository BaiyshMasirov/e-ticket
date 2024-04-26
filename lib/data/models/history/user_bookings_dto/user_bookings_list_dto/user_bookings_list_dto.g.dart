// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bookings_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBookingsListDtoImpl _$$UserBookingsListDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBookingsListDtoImpl(
      id: json['id'] as String?,
      status: json['status'] as int,
      created: json['created'] as String?,
      eventStatus: json['eventStatus'] as int,
      eventName: json['eventName'] as String?,
      eventId: json['eventId'] as String?,
      eventDate: json['eventDate'] as String?,
      bookingSum: (json['bookingSum'] as num).toDouble(),
      type: $enumDecode(_$LocationTypeEnumMap, json['type']),
      eventImage: json['eventImage'] as String?,
    );

Map<String, dynamic> _$$UserBookingsListDtoImplToJson(
    _$UserBookingsListDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['status'] = instance.status;
  writeNotNull('created', instance.created);
  val['eventStatus'] = instance.eventStatus;
  writeNotNull('eventName', instance.eventName);
  writeNotNull('eventId', instance.eventId);
  writeNotNull('eventDate', instance.eventDate);
  val['bookingSum'] = instance.bookingSum;
  val['type'] = _$LocationTypeEnumMap[instance.type]!;
  writeNotNull('eventImage', instance.eventImage);
  return val;
}

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
