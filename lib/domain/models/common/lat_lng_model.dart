import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/data/data.dart';

part 'lat_lng_model.freezed.dart';

@freezed
class LatLngModel with _$LatLngModel {
  const LatLngModel._();

  const factory LatLngModel({
    required double lat,
    required double lng,
  }) = _LatLngModel;

  factory LatLngModel.fromDto({
    required LatLngDto dto,
  }) =>
      LatLngModel(
        lat: dto.lat,
        lng: dto.lng,
      );

  factory LatLngModel.fromEntity({
    required LatLngEntity entity,
  }) =>
      LatLngModel(
        lat: entity.lat,
        lng: entity.lng,
      );

  LatLngEntity toEntity() => LatLngEntity(
        lat: lat,
        lng: lng,
      );
}
