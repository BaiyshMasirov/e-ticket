// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      Id: json['Id'] as String,
      Name: json['Name'] as String,
      Description: json['Description'] as String,
      StartDate: DateTime.parse(json['StartDate'] as String),
      EndDate: DateTime.parse(json['EndDate'] as String),
      Status: json['Status'] as int,
      Image: json['Image'] as String,
      AgeLimit: json['AgeLimit'] as int,
      MinPrice: (json['MinPrice'] as num).toDouble(),
      Sold: json['Sold'] as int,
      Count: json['Count'] as int,
      LocationName: json['LocationName'] as String,
      LocationId: json['LocationId'] as String,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Name': instance.Name,
      'Description': instance.Description,
      'StartDate': instance.StartDate.toIso8601String(),
      'EndDate': instance.EndDate.toIso8601String(),
      'Status': instance.Status,
      'Image': instance.Image,
      'AgeLimit': instance.AgeLimit,
      'MinPrice': instance.MinPrice,
      'Sold': instance.Sold,
      'Count': instance.Count,
      'LocationName': instance.LocationName,
      'LocationId': instance.LocationId,
    };
