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
        _$CreateBookingCommandDtoImpl instance) =>
    <String, dynamic>{
      if (instance.customerName case final value?) 'customerName': value,
      if (instance.customerEmail case final value?) 'customerEmail': value,
      if (instance.customerPhone case final value?) 'customerPhone': value,
      'paymentType': instance.paymentType,
      'eventId': instance.eventId,
      'ticketCount': instance.ticketCount,
      'bookingSum': instance.bookingSum,
    };
