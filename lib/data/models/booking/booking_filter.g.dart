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

Map<String, dynamic> _$$BookingFilterImplToJson(_$BookingFilterImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventName', instance.eventName);
  writeNotNull(
      'eventDate', const DateTimeUTCSerializer().toJson(instance.eventDate));
  return val;
}
