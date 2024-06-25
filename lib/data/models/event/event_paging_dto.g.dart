// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_paging_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventPagingDtoImpl _$$EventPagingDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventPagingDtoImpl(
      currentPageIndex: (json['currentPageIndex'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalItemCount: (json['totalItemCount'] as num).toInt(),
      events: (json['list'] as List<dynamic>)
          .map((e) => EventDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventPagingDtoImplToJson(
        _$EventPagingDtoImpl instance) =>
    <String, dynamic>{
      'currentPageIndex': instance.currentPageIndex,
      'pageSize': instance.pageSize,
      'totalItemCount': instance.totalItemCount,
      'list': instance.events.map((e) => e.toJson()).toList(),
    };
