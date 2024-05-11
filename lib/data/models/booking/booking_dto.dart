import 'package:eticket/common/common.dart';
import 'package:eticket/common/enums/booking_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
class BookingDto with _$BookingDto {
  const BookingDto._();

  const factory BookingDto({
    required String id,
    @DateTimeUTCSerializer() required DateTime eventDate,
    @DateTimeUTCSerializer() required DateTime created,
    @JsonKey(name: 'status', unknownEnumValue: BookingStatus.unknown)
    required BookingStatus bookingStatus,
    @JsonKey(unknownEnumValue: EventStatus.unknown)
    required EventStatus eventStatus,
    required String eventId,
    required double bookingSum,
    @JsonKey(name: 'type') required LocationType locationType,
    required String locationName,
    String? eventName,
    String? eventImage,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);
}
