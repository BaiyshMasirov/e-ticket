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
  val['paymentType'] = _$PaymentTypeEnumMap[instance.paymentType]!;
  val['eventId'] = instance.eventId;
  val['ticketCount'] = instance.ticketCount;
  val['bookingSum'] = instance.bookingSum;
  return val;
}

const _$PaymentTypeEnumMap = {
  PaymentType.WTF1: 1,
  PaymentType.WTF2: 2,
  PaymentType.WTF3: 3,
  PaymentType.WTF4: 4,
  PaymentType.WTF5: 5,
  PaymentType.WTF6: 6,
  PaymentType.UNKNOWN: 'UNKNOWN',
};
