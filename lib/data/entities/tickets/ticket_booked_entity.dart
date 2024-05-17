import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_booked_entity.freezed.dart';
part 'ticket_booked_entity.g.dart';

@freezed
class TicketBookedEntity with _$TicketBookedEntity {
  const TicketBookedEntity._();

  const factory TicketBookedEntity({
    required String id,
    required int rowNumber,
    required int placeNumber,
    @JsonKey(unknownEnumValue: TicketStatus.unknown)
    required TicketStatus ticketStatus,
    required double price,
    required String qrCode,

    /// type == [TicketType]
    required int type,

    /// ticketType == [TicketType]
    required TicketKeyValueEntity ticketType,
  }) = _TicketBookedEntity;

  factory TicketBookedEntity.fromJson(Json json) =>
      _$TicketBookedEntityFromJson(json);
}
