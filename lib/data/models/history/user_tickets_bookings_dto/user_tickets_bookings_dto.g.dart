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
      type: json['type'] as int,
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
    'type': instance.type,
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
