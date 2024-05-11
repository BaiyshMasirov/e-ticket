import 'package:eticket/common/common.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_dto.freezed.dart';
part 'tickets_dto.g.dart';

@freezed
class TicketsDto with _$TicketsDto {
  const TicketsDto._();

  const factory TicketsDto({
    required String id,
    required int rowNumber,
    required int placeNumber,
    @JsonKey(name: 'type') required int ticketType,
    @JsonKey(name: 'status') required TicketStatus ticketStatus,
    required double price,
    required String? qrCode,
  }) = _TicketsDto;

  factory TicketsDto.fromJson(Json json) => _$TicketsDtoFromJson(json);
}
