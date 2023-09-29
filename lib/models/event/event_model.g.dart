// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      status: json['status'] as int,
      image: json['image'] as String,
      ageLimit: json['ageLimit'] as int,
      minPrice: json['minPrice'] as int,
      sold: json['sold'] as int,
      count: json['count'] as int,
      locationName: json['locationName'] as String,
      locationId: json['locationId'] as String,
      poster: json['poster'] as String,
      type: json['type'] as int,
      video: json['video'] as String,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
      'image': instance.image,
      'ageLimit': instance.ageLimit,
      'minPrice': instance.minPrice,
      'sold': instance.sold,
      'count': instance.count,
      'locationName': instance.locationName,
      'locationId': instance.locationId,
      'poster': instance.poster,
      'type': instance.type,
      'video': instance.video,
    };
