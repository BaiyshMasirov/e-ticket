// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_paging_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingPagingEntityImpl _$$BookingPagingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingPagingEntityImpl(
      currentPageIndex: (json['currentPageIndex'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalItemCount: (json['totalItemCount'] as num).toInt(),
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
