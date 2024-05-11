import 'package:eticket/common/common.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/models/models.dart';

part 'events_filter.freezed.dart';
part 'events_filter.g.dart';

@freezed
class EventsFilter with _$EventsFilter {
  const EventsFilter._();

  const factory EventsFilter({
    KeyValueMapDto? type,
    EventStatus? status,
    @DateTimeUTCSerializer() DateTime? date,
  }) = _EventsFilter;

  factory EventsFilter.fromJson(Json json) => _$EventsFilterFromJson(json);

  bool get isFilterActive => type != null || status != null || date != null;

  Json toQueryParams() {
    final queryParams = <String, dynamic>{};
    if (type != null) {
      queryParams.addAll({'type': type?.key});
    }
    if (status != null) {
      queryParams.addAll({'status': status?.value});
    }
    if (date != null) {
      queryParams.addAll({'date': const DateTimeUTCSerializer().toJson(date)});
    }
    return queryParams;
  }
}
