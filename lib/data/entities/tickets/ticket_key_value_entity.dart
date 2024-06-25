import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_key_value_entity.freezed.dart';
part 'ticket_key_value_entity.g.dart';

@freezed
class TicketKeyValueEntity with _$TicketKeyValueEntity {
  const TicketKeyValueEntity._();

  const factory TicketKeyValueEntity({
    required int key,
    required String value,
  }) = _TicketKeyValueEntity;

  factory TicketKeyValueEntity.fromJson(Json json) =>
      _$TicketKeyValueEntityFromJson(json);
}
