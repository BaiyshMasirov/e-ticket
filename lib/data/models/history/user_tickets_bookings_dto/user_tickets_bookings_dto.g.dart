// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tickets_bookings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTicketsBookingsDtoImpl _$$UserTicketsBookingsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTicketsBookingsDtoImpl(
      id: json['id'] as String,
      rowNumber: json['rowNumber'] as int,
      placeNumber: json['placeNumber'] as int,
      type: $enumDecode(_$LocationTypeEnumMap, json['type']),
      status: json['status'] as int,
      price: (json['price'] as num).toDouble(),
      qrCode: json['qrCode'] as String?,
    );

Map<String, dynamic> _$$UserTicketsBookingsDtoImplToJson(
    _$UserTicketsBookingsDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'rowNumber': instance.rowNumber,
    'placeNumber': instance.placeNumber,
    'type': _$LocationTypeEnumMap[instance.type]!,
    'status': instance.status,
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qrCode', instance.qrCode);
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
  LocationType.unknown: 'unknown',
};
