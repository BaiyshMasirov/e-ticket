import 'package:eticket/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_key_value_model.freezed.dart';

@freezed
class TicketKeyValueModel with _$TicketKeyValueModel {
  const TicketKeyValueModel._();

  const factory TicketKeyValueModel({
    required int key,
    required String value,
  }) = _TicketKeyValueModel;

  factory TicketKeyValueModel.fromDto({
    required KeyValueMapDto dto,
  }) {
    return TicketKeyValueModel(
      key: dto.key,
      value: dto.value,
    );
  }

  KeyValueMapDto toDto() {
    return KeyValueMapDto(
      key: key,
      value: value,
    );
  }

  factory TicketKeyValueModel.fromEntity({
    required TicketKeyValueEntity entity,
  }) {
    return TicketKeyValueModel(
      key: entity.key,
      value: entity.value,
    );
  }

  TicketKeyValueEntity toEntity() {
    return TicketKeyValueEntity(
      key: key,
      value: value,
    );
  }
}
