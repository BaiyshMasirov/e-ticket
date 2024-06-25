import 'package:eticket/domain/models/booking/booking_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/data/entities/entities.dart';

part 'booking_paging_model.freezed.dart';

@freezed
class BookingPagingModel with _$BookingPagingModel {
  const BookingPagingModel._();

  const factory BookingPagingModel({
    required int currentPageIndex,
    required int pageSize,
    required int totalItemCount,
    required List<BookingModel> bookings,
  }) = _BookingPagingModel;

  int get maxPage => (totalItemCount / pageSize).ceil();

  factory BookingPagingModel.fromDto({
    required BookingPagingDto dto,
  }) {
    return BookingPagingModel(
      currentPageIndex: dto.currentPageIndex,
      pageSize: dto.pageSize,
      totalItemCount: dto.totalItemCount,
      bookings: dto.bookings.map((e) => BookingModel.fromDto(dto: e)).toList(),
    );
  }

  factory BookingPagingModel.fromEntity({
    required BookingPagingEntity entity,
  }) {
    return BookingPagingModel(
      currentPageIndex: entity.currentPageIndex,
      pageSize: entity.pageSize,
      totalItemCount: entity.totalItemCount,
      bookings: entity.bookings
          .map((e) => BookingModel.fromEntity(entity: e))
          .toList(),
    );
  }

  BookingPagingEntity toEntity() {
    return BookingPagingEntity(
      currentPageIndex: currentPageIndex,
      pageSize: pageSize,
      totalItemCount: totalItemCount,
      bookings: bookings.map((e) => e.toEntity()).toList(),
    );
  }
}
