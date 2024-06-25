// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_booked_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketBookedEntityImpl _$$TicketBookedEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TicketBookedEntityImpl(
      id: json['id'] as String,
      rowNumber: (json['rowNumber'] as num).toInt(),
      placeNumber: (json['placeNumber'] as num).toInt(),
      ticketStatus: $enumDecode(_$TicketStatusEnumMap, json['ticketStatus'],
          unknownValue: TicketStatus.unknown),
      price: (json['price'] as num).toDouble(),
      qrCode: json['qrCode'] as String?,
      type: (json['type'] as num).toInt(),
      ticketType: TicketKeyValueEntity.fromJson(
          json['ticketType'] as Map<String, dynamic>),
      seatingType: $enumDecode(_$TicketSeatingTypeEnumMap, json['seatingType'],
          unknownValue: TicketSeatingType.unknown),
    );

Map<String, dynamic> _$$TicketBookedEntityImplToJson(
    _$TicketBookedEntityImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'rowNumber': instance.rowNumber,
    'placeNumber': instance.placeNumber,
    'ticketStatus': _$TicketStatusEnumMap[instance.ticketStatus]!,
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qrCode', instance.qrCode);
  val['type'] = instance.type;
  val['ticketType'] = instance.ticketType.toJson();
  val['seatingType'] = _$TicketSeatingTypeEnumMap[instance.seatingType]!;
  return val;
}

const _$TicketStatusEnumMap = {
  TicketStatus.free: 0,
  TicketStatus.inProcess: 1,
  TicketStatus.payed: 2,
  TicketStatus.returned: 3,
  TicketStatus.used: 4,
  TicketStatus.unknown: 'unknown',
};

const _$TicketSeatingTypeEnumMap = {
  TicketSeatingType.none: 0,
  TicketSeatingType.noSeating: 1,
  TicketSeatingType.seating: 2,
  TicketSeatingType.unknown: 'unknown',
};
