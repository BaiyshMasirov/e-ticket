// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_type_count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketTypeCountDtoImpl _$$TicketTypeCountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TicketTypeCountDtoImpl(
      count: (json['count'] as num).toInt(),
      availableCount: (json['availableCount'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      type: (json['type'] as num).toInt(),
      ticketType:
          KeyValueMapDto.fromJson(json['ticketType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TicketTypeCountDtoImplToJson(
        _$TicketTypeCountDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'availableCount': instance.availableCount,
      'price': instance.price,
      'type': instance.type,
      'ticketType': instance.ticketType.toJson(),
    };
