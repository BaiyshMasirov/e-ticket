import 'package:common/common.dart';
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
    @JsonKey(unknownEnumValue: EventStatus.UNKNOWN) required EventStatus status,
    required int ageLimit,
    required double minPrice,
    required int sold,
    required int count,
    required String? locationName,
    required String locationId,
    required String? poster,
    @JsonKey(unknownEnumValue: EventType.UNKNOWN) required EventType type,
    required String? video,
    required String? image,
  }) = _EventDto;

  factory EventDto.fromJson(Json json) => _$EventDtoFromJson(json);
}
