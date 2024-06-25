import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng_entity.freezed.dart';
part 'lat_lng_entity.g.dart';

@freezed
class LatLngEntity with _$LatLngEntity {
  const LatLngEntity._();

  const factory LatLngEntity({
    required double lat,
    required double lng,
  }) = _LatLngEntity;

  factory LatLngEntity.fromJson(Json json) => _$LatLngEntityFromJson(json);
}
