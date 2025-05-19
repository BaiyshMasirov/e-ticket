// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingFilterImpl _$$BookingFilterImplFromJson(Map<String, dynamic> json) =>
    _$BookingFilterImpl(
      eventName: json['eventName'] as String?,
      eventDate:
          const DateTimeUTCSerializer().fromJson(json['eventDate'] as String?),
    );

Map<String, dynamic> _$$BookingFilterImplToJson(_$BookingFilterImpl instance) =>
    <String, dynamic>{
      if (instance.eventName case final value?) 'eventName': value,
      if (const DateTimeUTCSerializer().toJson(instance.eventDate)
          case final value?)
        'eventDate': value,
    };
