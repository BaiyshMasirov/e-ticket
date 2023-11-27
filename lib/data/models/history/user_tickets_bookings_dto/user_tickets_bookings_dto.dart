import 'package:common/common.dart';
import 'package:eticket/common/enums/location_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tickets_bookings_dto.freezed.dart';
part 'user_tickets_bookings_dto.g.dart';

@freezed
class UserTicketsBookingsDto with _$UserTicketsBookingsDto {
  const UserTicketsBookingsDto._();
  const factory UserTicketsBookingsDto({
    required String id,
    required int rowNumber,
    required int placeNumber,
    required LocationType type,
    required int status,
    required double price,
    required String? qrCode,
  }) = _UserTicketsBookingsDto;

  factory UserTicketsBookingsDto.fromJson(Json json) =>
      _$UserTicketsBookingsDtoFromJson(json);
}
