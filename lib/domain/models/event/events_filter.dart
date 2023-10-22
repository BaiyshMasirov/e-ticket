import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/models/models.dart';

part 'events_filter.freezed.dart';
part 'events_filter.g.dart';

@freezed
class EventsFilter with _$EventsFilter {
  const EventsFilter._();
  const factory EventsFilter({
    EventType? type,
    EventStatus? status,
    @DateTimeUTCSerializer()
    DateTime? date,
  }) = _EventsFilter;

  factory EventsFilter.fromJson(Json json) => _$EventsFilterFromJson(json);
}
