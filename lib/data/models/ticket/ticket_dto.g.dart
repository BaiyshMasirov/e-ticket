// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketDtoImpl _$$TicketDtoImplFromJson(Map<String, dynamic> json) =>
    _$TicketDtoImpl(
      id: json['id'] as String,
      type: $enumDecode(_$TicketTypeEnumMap, json['type']),
      placeNumber: json['placeNumber'] as int,
      rowNumber: json['rowNumber'] as int,
      branchIndex: json['branchIndex'] as int,
      branchType: json['branchType'] as int,
      index: json['index'] as int,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$TicketDtoImplToJson(_$TicketDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TicketTypeEnumMap[instance.type]!,
      'placeNumber': instance.placeNumber,
      'rowNumber': instance.rowNumber,
      'branchIndex': instance.branchIndex,
      'branchType': instance.branchType,
      'index': instance.index,
      'price': instance.price,
    };

const _$TicketTypeEnumMap = {
  TicketType.WTF0: 0,
  TicketType.WTF1: 1,
  TicketType.WTF2: 2,
  TicketType.UNKNOWN: 'UNKNOWN',
};
