// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_command_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBookingCommandDtoImpl _$$CreateBookingCommandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBookingCommandDtoImpl(
      customerName: json['customerName'] as String?,
      customerEmail: json['customerEmail'] as String?,
      customerPhone: json['customerPhone'] as String?,
      paymentType: (json['paymentType'] as num).toInt(),
      eventId: json['eventId'] as String,
      ticketCount: (json['ticketCount'] as num).toInt(),
      bookingSum: (json['bookingSum'] as num).toDouble(),
    );

Map<String, dynamic> _$$CreateBookingCommandDtoImplToJson(
    _$CreateBookingCommandDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customerName', instance.customerName);
  writeNotNull('customerEmail', instance.customerEmail);
  writeNotNull('customerPhone', instance.customerPhone);
  val['paymentType'] = instance.paymentType;
  val['eventId'] = instance.eventId;
  val['ticketCount'] = instance.ticketCount;
  val['bookingSum'] = instance.bookingSum;
  return val;
}
