import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/models/enums/enums.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
class EventDto with _$EventDto {
  const EventDto._();
  const factory EventDto({
    required String id,
    required String? name,
    required String? description,
    @DateTimeUTCSerializer() required DateTime startDate,
    @DateTimeUTCSerializer() required DateTime endDate,
    required int status,
    required int ageLimit,
    required double minPrice,
    required int sold,
    required int count,
    required String? locationName,
    required String locationId,
    @JsonKey(unknownEnumValue: LocationType.unknown)
    required LocationType locationType,
    required String? poster,
    required int type,
    required String? video,
    required String? image,
  }) = _EventDto;

  factory EventDto.fromJson(Json json) => _$EventDtoFromJson(json);
}
