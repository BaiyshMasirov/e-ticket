import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hold_ticket_command_dto.freezed.dart';
part 'hold_ticket_command_dto.g.dart';

@freezed
class HoldTicketCommandDto with _$HoldTicketCommandDto {
  const HoldTicketCommandDto._();
  const factory HoldTicketCommandDto({
    required String id,
  }) = _HoldTicketCommandDto;

  factory HoldTicketCommandDto.fromJson(Json json) =>
      _$HoldTicketCommandDtoFromJson(json);
}
