import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/data/entities/entities.dart';

part 'booking_model.freezed.dart';

@freezed
class BookingModel with _$BookingModel {
  const BookingModel._();

  const factory BookingModel({
    required String id,
    required DateTime eventDate,
    required DateTime created,
    required BookingStatus bookingStatus,
    required EventStatus eventStatus,
    required String eventId,
    required double bookingSum,
    required LocationType locationType,
    required String locationName,
    required List<TicketBookedModel> tickets,
    required PaymentType paymentType,
    required EventSeatingType seatingType,
    String? eventName,
    String? eventImage,
  }) = _BookingModel;

  factory BookingModel.fromDto({
    required BookingDto dto,
  }) {
    return BookingModel(
      id: dto.id,
      eventDate: dto.eventDate,
      created: dto.created,
      bookingStatus: dto.bookingStatus,
      eventStatus: dto.eventStatus,
      eventId: dto.eventId,
      bookingSum: dto.bookingSum,
      locationType: dto.locationType,
      locationName: dto.locationName,
      eventName: dto.eventName,
      eventImage: dto.eventImage,
      paymentType: dto.paymentType,
      seatingType: dto.seatingType,
      tickets:
          dto.tickets.map((t) => TicketBookedModel.fromDto(dto: t)).toList(),
    );
  }

  factory BookingModel.fromEntity({
    required BookingEntity entity,
  }) {
    return BookingModel(
      id: entity.id,
      eventDate: entity.eventDate,
      created: entity.created,
      bookingStatus: entity.bookingStatus,
      eventStatus: entity.eventStatus,
      eventId: entity.eventId,
      bookingSum: entity.bookingSum,
      locationType: entity.locationType,
      locationName: entity.locationName,
      eventName: entity.eventName,
      eventImage: entity.eventImage,
      paymentType: entity.paymentType,
      seatingType: entity.seatingType,
      tickets: entity.tickets
          .map((t) => TicketBookedModel.fromEntity(entity: t))
          .toList(),
    );
  }

  BookingEntity toEntity() {
    return BookingEntity(
      id: id,
      eventDate: eventDate,
      created: created,
      bookingStatus: bookingStatus,
      eventStatus: eventStatus,
      eventId: eventId,
      bookingSum: bookingSum,
      locationType: locationType,
      locationName: locationName,
      eventName: eventName,
      eventImage: eventImage,
      paymentType: paymentType,
      seatingType: seatingType,
      tickets: tickets.map((ticket) => ticket.toEntity()).toList(),
    );
  }
}
