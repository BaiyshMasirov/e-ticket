// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bookings_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBookingsListDtoImpl _$$UserBookingsListDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBookingsListDtoImpl(
      id: json['id'] as String?,
      status: json['status'] as int,
      created: json['created'] as String?,
      eventStatus: json['eventStatus'] as int,
      eventName: json['eventName'] as String?,
      eventId: json['eventId'] as String?,
      eventDate: json['eventDate'] as String?,
      bookingSum: (json['bookingSum'] as num).toDouble(),
      type: json['type'] as int,
      eventImage: json['eventImage'] as String?,
    );

Map<String, dynamic> _$$UserBookingsListDtoImplToJson(
    _$UserBookingsListDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['status'] = instance.status;
  writeNotNull('created', instance.created);
  val['eventStatus'] = instance.eventStatus;
  writeNotNull('eventName', instance.eventName);
  writeNotNull('eventId', instance.eventId);
  writeNotNull('eventDate', instance.eventDate);
  val['bookingSum'] = instance.bookingSum;
  val['type'] = instance.type;
  writeNotNull('eventImage', instance.eventImage);
  return val;
}
