import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/common/enums/enums.dart';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

@freezed
class TicketDto with _$TicketDto {
  const TicketDto._();
  const factory TicketDto({
    required String id,
    @JsonKey(name: 'type') required int ticketType,
    required int placeNumber,
    required int rowNumber,
    required int branchIndex,
    required int branchType,
    required int index,
    required double price,
    @JsonKey(name: 'status', unknownEnumValue: TicketStatus.unknown)
    required TicketStatus ticketStatus,
  }) = _TicketDto;

  factory TicketDto.fromJson(Json json) => _$TicketDtoFromJson(json);
}
