// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDtoImpl _$$EventDtoImplFromJson(Map<String, dynamic> json) =>
    _$EventDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      status: json['status'] as int,
      ageLimit: json['ageLimit'] as int,
      minPrice: (json['minPrice'] as num).toDouble(),
      sold: json['sold'] as int,
      count: json['count'] as int,
      locationName: json['locationName'] as String?,
      locationId: json['locationId'] as String,
      locationType: json['locationType'] as int,
      poster: json['poster'] as String?,
      type: json['type'] as int,
      video: json['video'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$EventDtoImplToJson(_$EventDtoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  val['startDate'] = instance.startDate.toIso8601String();
  val['endDate'] = instance.endDate.toIso8601String();
  val['status'] = instance.status;
  val['ageLimit'] = instance.ageLimit;
  val['minPrice'] = instance.minPrice;
  val['sold'] = instance.sold;
  val['count'] = instance.count;
  writeNotNull('locationName', instance.locationName);
  val['locationId'] = instance.locationId;
  val['locationType'] = instance.locationType;
  writeNotNull('poster', instance.poster);
  val['type'] = instance.type;
  writeNotNull('video', instance.video);
  writeNotNull('image', instance.image);
  return val;
}
