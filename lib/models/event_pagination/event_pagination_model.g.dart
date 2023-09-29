// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventPaginationModel _$$_EventPaginationModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventPaginationModel(
      currentPageIndex: json['currentPageIndex'] as int,
      pageSize: json['pageSize'] as int,
      totalItemCount: json['totalItemCount'] as int,
      list: (json['list'] as List<dynamic>)
          .map((e) => EventPaginationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventPaginationModelToJson(
        _$_EventPaginationModel instance) =>
    <String, dynamic>{
      'currentPageIndex': instance.currentPageIndex,
      'pageSize': instance.pageSize,
      'totalItemCount': instance.totalItemCount,
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
