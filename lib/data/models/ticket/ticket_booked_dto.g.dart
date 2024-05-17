// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_booked_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketBookedDtoImpl _$$TicketBookedDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TicketBookedDtoImpl(
      id: json['id'] as String,
      rowNumber: json['rowNumber'] as int,
      placeNumber: json['placeNumber'] as int,
      ticketStatus: $enumDecode(_$TicketStatusEnumMap, json['status'],
          unknownValue: TicketStatus.unknown),
      price: (json['price'] as num).toDouble(),
      qrCode: json['qrCode'] as String,
      type: json['type'] as int,
      ticketType:
          KeyValueMapDto.fromJson(json['ticketType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TicketBookedDtoImplToJson(
        _$TicketBookedDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rowNumber': instance.rowNumber,
      'placeNumber': instance.placeNumber,
      'status': _$TicketStatusEnumMap[instance.ticketStatus]!,
      'price': instance.price,
      'qrCode': instance.qrCode,
      'type': instance.type,
      'ticketType': instance.ticketType.toJson(),
    };

const _$TicketStatusEnumMap = {
  TicketStatus.free: 0,
  TicketStatus.inProcess: 1,
  TicketStatus.payed: 2,
  TicketStatus.returned: 3,
  TicketStatus.used: 4,
  TicketStatus.unknown: 'unknown',
};
