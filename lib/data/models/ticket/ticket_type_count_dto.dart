import 'package:eticket/data/data.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/common/enums/enums.dart';

part 'ticket_type_count_dto.freezed.dart';
part 'ticket_type_count_dto.g.dart';

@freezed
class TicketTypeCountDto with _$TicketTypeCountDto {
  const TicketTypeCountDto._();
  const factory TicketTypeCountDto({
    required int count,
    required int availableCount,
    required double price,

    /// type == [TicketType]
    required int type,

    /// ticketType == [TicketType]
    required KeyValueMapDto ticketType,
  }) = _TicketTypeCountDto;

  factory TicketTypeCountDto.fromJson(Json json) =>
      _$TicketTypeCountDtoFromJson(json);
}
