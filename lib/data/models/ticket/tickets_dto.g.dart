// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketsDtoImpl _$$TicketsDtoImplFromJson(Map<String, dynamic> json) =>
    _$TicketsDtoImpl(
      id: json['id'] as String,
      rowNumber: json['rowNumber'] as int,
      placeNumber: json['placeNumber'] as int,
      ticketType: json['type'] as int,
      ticketStatus: $enumDecode(_$TicketStatusEnumMap, json['status']),
      price: (json['price'] as num).toDouble(),
      qrCode: json['qrCode'] as String?,
    );

Map<String, dynamic> _$$TicketsDtoImplToJson(_$TicketsDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'rowNumber': instance.rowNumber,
    'placeNumber': instance.placeNumber,
    'type': instance.ticketType,
    'status': _$TicketStatusEnumMap[instance.ticketStatus]!,
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

const _$TicketStatusEnumMap = {
  TicketStatus.free: 0,
  TicketStatus.inProcess: 1,
  TicketStatus.payed: 2,
  TicketStatus.returned: 3,
  TicketStatus.used: 4,
  TicketStatus.unknown: 'unknown',
};
