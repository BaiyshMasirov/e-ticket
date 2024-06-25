import 'package:eticket/data/entities/booking/booking_entity.dart';
import 'package:eticket/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_paging_entity.freezed.dart';
part 'booking_paging_entity.g.dart';

@freezed
class BookingPagingEntity with _$BookingPagingEntity {
  const BookingPagingEntity._();

  const factory BookingPagingEntity({
    required int currentPageIndex,
    required int pageSize,
    required int totalItemCount,
    required List<BookingEntity> bookings,
  }) = _BookingPagingEntity;

  int get maxPage => (totalItemCount / pageSize).ceil();

  List<Json> toBookingsJson() {
    return bookings.map((e) => e.toJson()).toList();
  }

  factory BookingPagingEntity.fromJson(Json json) =>
      _$BookingPagingEntityFromJson(json);
}
