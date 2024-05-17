// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_paging_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingPagingEntityImpl _$$BookingPagingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingPagingEntityImpl(
      currentPageIndex: json['currentPageIndex'] as int,
      pageSize: json['pageSize'] as int,
      totalItemCount: json['totalItemCount'] as int,
      bookings: (json['bookings'] as List<dynamic>)
          .map((e) => BookingEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingPagingEntityImplToJson(
        _$BookingPagingEntityImpl instance) =>
    <String, dynamic>{
      'currentPageIndex': instance.currentPageIndex,
      'pageSize': instance.pageSize,
      'totalItemCount': instance.totalItemCount,
      'bookings': instance.bookings.map((e) => e.toJson()).toList(),
    };
