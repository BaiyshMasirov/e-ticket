// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_paging_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventPagingDtoImpl _$$EventPagingDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventPagingDtoImpl(
      currentPageIndex: json['currentPageIndex'] as int,
      pageSize: json['pageSize'] as int,
      totalItemCount: json['totalItemCount'] as int,
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
