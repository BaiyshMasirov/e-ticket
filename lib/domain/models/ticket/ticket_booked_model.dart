import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/data/entities/entities.dart';

part 'ticket_booked_model.freezed.dart';

@freezed
class TicketBookedModel with _$TicketBookedModel {
  const TicketBookedModel._();

  const factory TicketBookedModel({
    required String id,
    required int rowNumber,
    required int placeNumber,
    required TicketStatus ticketStatus,
    required double price,
    required String? qrCode,

    /// type == [TicketType]
    required int type,

    /// ticketType == [TicketType]
    required TicketKeyValueModel ticketType,
    required TicketSeatingType seatingType,
  }) = _TicketBookedModel;

  factory TicketBookedModel.fromDto({
    required TicketBookedDto dto,
  }) {
    return TicketBookedModel(
      id: dto.id,
      rowNumber: dto.rowNumber,
      placeNumber: dto.placeNumber,
      type: dto.type,
      ticketType: TicketKeyValueModel.fromDto(dto: dto.ticketType),
      ticketStatus: dto.ticketStatus,
      price: dto.price,
      qrCode: dto.qrCode,
      seatingType: dto.seatingType,
    );
  }

  factory TicketBookedModel.fromEntity({
    required TicketBookedEntity entity,
  }) {
    return TicketBookedModel(
      id: entity.id,
      rowNumber: entity.rowNumber,
      placeNumber: entity.placeNumber,
      type: entity.type,
      ticketType: TicketKeyValueModel.fromEntity(entity: entity.ticketType),
      ticketStatus: entity.ticketStatus,
      price: entity.price,
      qrCode: entity.qrCode,
      seatingType: entity.seatingType,
    );
  }

  TicketBookedEntity toEntity() {
    return TicketBookedEntity(
      id: id,
      rowNumber: rowNumber,
      placeNumber: placeNumber,
      type: type,
      ticketType: ticketType.toEntity(),
      ticketStatus: ticketStatus,
      price: price,
      qrCode: qrCode,
      seatingType: seatingType,
    );
  }
}
