import 'package:eticket/data/models/history/user_bookings_dto/user_bookings_list_dto/user_bookings_list_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bookings_dto.freezed.dart';
part 'user_bookings_dto.g.dart';

@freezed
class UserBookingsDto with _$UserBookingsDto {
  const UserBookingsDto._();
  const factory UserBookingsDto({
    required int currentPageIndex,
    required int pageSize,
    required int totalItemCount,
    @JsonKey(name: 'list') required List<UserBookingsListDto> bookingsList,
  }) = _UserBookingsDto;

  int get maxPage => (totalItemCount / pageSize).ceil();

  factory UserBookingsDto.fromJson(Map<String, dynamic> json) =>
      _$UserBookingsDtoFromJson(json);
}
