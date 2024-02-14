// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bookings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBookingsDtoImpl _$$UserBookingsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBookingsDtoImpl(
      currentPageIndex: json['currentPageIndex'] as int,
      pageSize: json['pageSize'] as int,
      totalItemCount: json['totalItemCount'] as int,
      bookingsList: (json['list'] as List<dynamic>)
          .map((e) => UserBookingsListDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserBookingsDtoImplToJson(
        _$UserBookingsDtoImpl instance) =>
    <String, dynamic>{
      'currentPageIndex': instance.currentPageIndex,
      'pageSize': instance.pageSize,
      'totalItemCount': instance.totalItemCount,
      'list': instance.bookingsList.map((e) => e.toJson()).toList(),
    };
