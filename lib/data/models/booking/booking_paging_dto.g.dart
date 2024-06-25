// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_paging_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingPagingDtoImpl _$$BookingPagingDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingPagingDtoImpl(
      currentPageIndex: (json['currentPageIndex'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalItemCount: (json['totalItemCount'] as num).toInt(),
      bookings: (json['list'] as List<dynamic>)
          .map((e) => BookingDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingPagingDtoImplToJson(
        _$BookingPagingDtoImpl instance) =>
    <String, dynamic>{
      'currentPageIndex': instance.currentPageIndex,
      'pageSize': instance.pageSize,
      'totalItemCount': instance.totalItemCount,
      'list': instance.bookings.map((e) => e.toJson()).toList(),
    };
