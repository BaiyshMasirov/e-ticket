// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketDtoImpl _$$TicketDtoImplFromJson(Map<String, dynamic> json) =>
    _$TicketDtoImpl(
      id: json['id'] as String,
      ticketType: (json['type'] as num).toInt(),
      placeNumber: (json['placeNumber'] as num).toInt(),
      rowNumber: (json['rowNumber'] as num).toInt(),
      branchIndex: (json['branchIndex'] as num).toInt(),
      branchType: (json['branchType'] as num).toInt(),
      index: (json['index'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      ticketStatus: $enumDecode(_$TicketStatusEnumMap, json['status'],
          unknownValue: TicketStatus.unknown),
    );

Map<String, dynamic> _$$TicketDtoImplToJson(_$TicketDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.ticketType,
      'placeNumber': instance.placeNumber,
      'rowNumber': instance.rowNumber,
      'branchIndex': instance.branchIndex,
      'branchType': instance.branchType,
      'index': instance.index,
      'price': instance.price,
      'status': _$TicketStatusEnumMap[instance.ticketStatus]!,
    };

const _$TicketStatusEnumMap = {
  TicketStatus.free: 0,
  TicketStatus.inProcess: 1,
  TicketStatus.payed: 2,
  TicketStatus.returned: 3,
  TicketStatus.used: 4,
  TicketStatus.unknown: 'unknown',
};
