import 'package:eticket/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bookings_list_dto.freezed.dart';
part 'user_bookings_list_dto.g.dart';

@freezed
class UserBookingsListDto with _$UserBookingsListDto {
  const UserBookingsListDto._();
  const factory UserBookingsListDto({
    required String? id,
    required int status,
    required String? created,
    required int eventStatus,
    required String? eventName,
    required String? eventId,
    required String? eventDate,
    required double bookingSum,
    required LocationType type,
    required String? eventImage,
  }) = _UserBookingsListDto;

  factory UserBookingsListDto.fromJson(Map<String, dynamic> json) =>
      _$UserBookingsListDtoFromJson(json);
}
