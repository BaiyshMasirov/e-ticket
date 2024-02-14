import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bookings_filter.freezed.dart';
part 'user_bookings_filter.g.dart';

@freezed
class UserBookingsFilter with _$UserBookingsFilter {
  const UserBookingsFilter._();
  const factory UserBookingsFilter({
    String? eventName,
    @DateTimeUTCSerializer() DateTime? eventDate,
  }) = _UserBookingsFilter;

  factory UserBookingsFilter.fromJson(Map<String, dynamic> json) =>
      _$UserBookingsFilterFromJson(json);
}
