import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng_dto.freezed.dart';
part 'lat_lng_dto.g.dart';

@freezed
class LatLngDto with _$LatLngDto {
  const LatLngDto._();

  const factory LatLngDto({
    required double lat,
    required double lng,
  }) = _LatLngDto;

  factory LatLngDto.fromJson(Json json) => _$LatLngDtoFromJson(json);
}
