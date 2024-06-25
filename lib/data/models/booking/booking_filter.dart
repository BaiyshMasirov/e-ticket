import 'package:eticket/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_filter.freezed.dart';
part 'booking_filter.g.dart';

@freezed
class BookingFilter with _$BookingFilter {
  const BookingFilter._();
  const factory BookingFilter({
    String? eventName,
    @DateTimeUTCSerializer() DateTime? eventDate,
  }) = _BookingFilter;

  factory BookingFilter.fromJson(Map<String, dynamic> json) =>
      _$BookingFilterFromJson(json);
}
