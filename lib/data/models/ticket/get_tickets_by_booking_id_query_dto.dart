import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_tickets_by_booking_id_query_dto.freezed.dart';
part 'get_tickets_by_booking_id_query_dto.g.dart';

@freezed
class GetTicketsByBookingIdQueryDto with _$GetTicketsByBookingIdQueryDto {
  const GetTicketsByBookingIdQueryDto._();
  const factory GetTicketsByBookingIdQueryDto({
    required String id,
  }) = _GetTicketsByBookingIdQueryDto;

  factory GetTicketsByBookingIdQueryDto.fromJson(Json json) =>
      _$GetTicketsByBookingIdQueryDtoFromJson(json);
}
