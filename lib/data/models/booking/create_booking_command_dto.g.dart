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
      paymentType: $enumDecode(_$PaymentTypeEnumMap, json['paymentType'],
          unknownValue: PaymentType.UNKNOWN),
      eventId: json['eventId'] as String,
      ticketCount: json['ticketCount'] as int,
      bookingSum: (json['bookingSum'] as num).toDouble(),
    );

Map<String, dynamic> _$$CreateBookingCommandDtoImplToJson(
        _$CreateBookingCommandDtoImpl instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'customerEmail': instance.customerEmail,
      'customerPhone': instance.customerPhone,
      'paymentType': _$PaymentTypeEnumMap[instance.paymentType]!,
      'eventId': instance.eventId,
      'ticketCount': instance.ticketCount,
      'bookingSum': instance.bookingSum,
    };

const _$PaymentTypeEnumMap = {
  PaymentType.WTF1: 1,
  PaymentType.WTF2: 2,
  PaymentType.WTF3: 3,
  PaymentType.WTF4: 4,
  PaymentType.WTF5: 5,
  PaymentType.WTF6: 6,
  PaymentType.UNKNOWN: 'UNKNOWN',
};
