import 'package:eticket/common/common.dart';
import 'package:eticket/common/enums/booking_status.dart';
import 'package:eticket/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
class BookingDto with _$BookingDto {
  const BookingDto._();

  const factory BookingDto({
    required String id,
    @DateTimeUTCSerializer() required DateTime created,
    @DateTimeUTCSerializer() required DateTime eventDate,
    @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
    required BookingStatus bookingStatus,
    @JsonKey(unknownEnumValue: EventStatus.unknown)
    required EventStatus eventStatus,
    required String eventId,
    required double bookingSum,
    @JsonKey(name: 'type', unknownEnumValue: LocationType.unknown)
    required LocationType locationType,
    required String locationName,
    @JsonKey(unknownEnumValue: PaymentType.unknown)
    required PaymentType paymentType,
    @JsonKey(unknownEnumValue: EventSeatingType.unknown)
    required EventSeatingType seatingType,
    @Default([]) List<TicketBookedDto> tickets,
    String? eventName,
    String? eventImage,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);
}
