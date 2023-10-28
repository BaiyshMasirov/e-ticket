import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

@freezed
class TicketDto with _$TicketDto {
  const TicketDto._();
  const factory TicketDto({
    required String id,
    required int type,
    required int placeNumber,
    required int rowNumber,
    required int branchIndex,
    required int branchType,
    required int index,
    required double price,
  }) = _TicketDto;

  factory TicketDto.fromJson(Json json) => _$TicketDtoFromJson(json);
}
