import 'package:eticket/data/models/booking/booking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_paging_dto.freezed.dart';
part 'booking_paging_dto.g.dart';

@freezed
class BookingPagingDto with _$BookingPagingDto {
  const BookingPagingDto._();

  const factory BookingPagingDto({
    required int currentPageIndex,
    required int pageSize,
    required int totalItemCount,
    @JsonKey(name: 'list') required List<BookingDto> bookings,
  }) = _BookingPagingDto;

  int get maxPage => (totalItemCount / pageSize).ceil();

  factory BookingPagingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingPagingDtoFromJson(json);
}
