// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingDtoImpl _$$BookingDtoImplFromJson(Map<String, dynamic> json) =>
    _$BookingDtoImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      eventDate: DateTime.parse(json['eventDate'] as String),
      bookingStatus: $enumDecode(_$BookingStatusEnumMap, json['status'],
          unknownValue: BookingStatus.unknown),
      eventStatus: $enumDecode(_$EventStatusEnumMap, json['eventStatus'],
          unknownValue: EventStatus.unknown),
      eventId: json['eventId'] as String,
      bookingSum: (json['bookingSum'] as num).toDouble(),
      locationType: $enumDecode(_$LocationTypeEnumMap, json['type'],
          unknownValue: LocationType.unknown),
      locationName: json['locationName'] as String,
      paymentType: $enumDecode(_$PaymentTypeEnumMap, json['paymentType'],
          unknownValue: PaymentType.unknown),
      seatingType: $enumDecode(_$EventSeatingTypeEnumMap, json['seatingType'],
          unknownValue: EventSeatingType.unknown),
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map((e) => TicketBookedDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      yCordinate: DoubleSerializers.fromJsonZeroNullable(json['yCordinate']),
      xCordinate: DoubleSerializers.fromJsonZeroNullable(json['xCordinate']),
      eventName: json['eventName'] as String?,
      eventImage: json['eventImage'] as String?,
    );

Map<String, dynamic> _$$BookingDtoImplToJson(_$BookingDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'created': instance.created.toIso8601String(),
    'eventDate': instance.eventDate.toIso8601String(),
    'status': _$BookingStatusEnumMap[instance.bookingStatus]!,
    'eventStatus': _$EventStatusEnumMap[instance.eventStatus]!,
    'eventId': instance.eventId,
    'bookingSum': instance.bookingSum,
    'type': _$LocationTypeEnumMap[instance.locationType]!,
    'locationName': instance.locationName,
    'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
    'seatingType': _$EventSeatingTypeEnumMap[instance.seatingType]!,
    'tickets': instance.tickets.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'yCordinate', DoubleSerializers.toJsonZeroNullable(instance.yCordinate));
  writeNotNull(
      'xCordinate', DoubleSerializers.toJsonZeroNullable(instance.xCordinate));
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

const _$PaymentTypeEnumMap = {
  PaymentType.Card: 1,
  PaymentType.Mbank: 2,
  PaymentType.Elsom: 3,
  PaymentType.Megapay: 4,
  PaymentType.Odengi: 5,
  PaymentType.Balance: 6,
  PaymentType.unknown: 'unknown',
};

const _$EventSeatingTypeEnumMap = {
  EventSeatingType.none: 0,
  EventSeatingType.noSeating: 1,
  EventSeatingType.seating: 2,
  EventSeatingType.combo: 3,
  EventSeatingType.unknown: 'unknown',
};
