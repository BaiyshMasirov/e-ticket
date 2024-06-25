import 'package:eticket/common/common.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/data/entities/entities.dart';

part 'booking_entity.freezed.dart';
part 'booking_entity.g.dart';

@freezed
class BookingEntity with _$BookingEntity {
  const BookingEntity._();

  const factory BookingEntity({
    required String id,
    @DateTimeUTCSerializer() required DateTime eventDate,
    @DateTimeUTCSerializer() required DateTime created,
    @JsonKey(unknownEnumValue: BookingStatus.unknown)
    required BookingStatus bookingStatus,
    @JsonKey(unknownEnumValue: EventStatus.unknown)
    required EventStatus eventStatus,
    required String eventId,
    required double bookingSum,
    @JsonKey(unknownEnumValue: LocationType.unknown)
    required LocationType locationType,
    required String locationName,
    @JsonKey(unknownEnumValue: PaymentType.unknown)
    required PaymentType paymentType,
    @JsonKey(unknownEnumValue: EventSeatingType.unknown)
    required EventSeatingType seatingType,
    required List<TicketBookedEntity> tickets,
    required LatLngEntity? latLng,
    String? eventName,
    String? eventImage,
  }) = _BookingEntity;

  factory BookingEntity.fromJson(Json json) => _$BookingEntityFromJson(json);
}
