import 'package:eticket/data/models/event/event_dto.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_paging_dto.freezed.dart';
part 'event_paging_dto.g.dart';

@freezed
class EventPagingDto with _$EventPagingDto {
  const EventPagingDto._();
  const factory EventPagingDto({
    required int currentPageIndex,
    required int pageSize,
    required int totalItemCount,
    @JsonKey(name: 'list') required List<EventDto> events,
  }) = _EventPagingDto;

  int get maxPage => (totalItemCount / pageSize).ceil();

  factory EventPagingDto.fromJson(Json json) => _$EventPagingDtoFromJson(json);
}
