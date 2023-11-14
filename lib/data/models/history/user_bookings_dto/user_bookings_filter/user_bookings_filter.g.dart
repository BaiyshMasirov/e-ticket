// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bookings_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBookingsFilterImpl _$$UserBookingsFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBookingsFilterImpl(
      eventName: json['eventName'] as String?,
      eventDate:
          const DateTimeUTCSerializer().fromJson(json['eventDate'] as String?),
    );

Map<String, dynamic> _$$UserBookingsFilterImplToJson(
    _$UserBookingsFilterImpl instance) {
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
