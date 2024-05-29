import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_booked_dto.freezed.dart';
part 'ticket_booked_dto.g.dart';

@freezed
class TicketBookedDto with _$TicketBookedDto {
  const TicketBookedDto._();

  const factory TicketBookedDto({
    required String id,
    required int rowNumber,
    required int placeNumber,
    @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
    required TicketStatus ticketStatus,
    required double price,
    required String? qrCode,

    /// type == [TicketType]
    required int type,

    /// ticketType == [TicketType]
    required KeyValueMapDto ticketType,
    @JsonKey(unknownEnumValue: TicketSeatingType.unknown)
    required TicketSeatingType seatingType,
  }) = _TicketBookedDto;

  factory TicketBookedDto.fromJson(Json json) =>
      _$TicketBookedDtoFromJson(json);
}
