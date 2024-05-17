import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/utils/alias/alias.dart';
import 'package:sembast/sembast.dart';

class BookingHistoryLocalDatasources {
  final Database _db;

  BookingHistoryLocalDatasources({
    required Database db,
  }) : _db = db;

  final store = intMapStoreFactory.store(Constants.ticketBookingDB);

  Future<void> saveHistoryBooking({
    required BookingPagingEntity bookingPaging,
  }) async {
    try {
      final keys = List.generate(
        bookingPaging.bookings.length,
        (i) => bookingPaging.bookings[i].created.millisecondsSinceEpoch,
      );

      await store.records(keys).put(_db, bookingPaging.toBookingsJson());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<RemoteResponse<BookingPagingEntity>> getUserBookings({
    required BookingFilter bookingFilter,
    required int page,
    required int pageSize,
  }) async {
    try {
      final pageIndex = page - 1;

      final filter = _buildFilter(filter: bookingFilter);

      final bookingsCount = await store.count(_db, filter: filter);

      final bookingsEntity = await store.find(
        _db,
        finder: Finder(
          filter: filter,
          offset: pageIndex * pageSize,
          limit: pageSize,
          sortOrders: [SortOrder(Field.key, false)],
        ),
      );

      return RemoteResponse.dataWithHeaders(ResponseData(
        data: BookingPagingEntity(
          pageSize: pageSize,
          currentPageIndex: pageIndex,
          totalItemCount: bookingsCount,
          bookings: bookingsEntity
              .map((e) => BookingEntity.fromJson(e.value))
              .toList(),
        ),
        headers: Headers(),
      ));
    } catch (e) {
      return RemoteResponse.badRequest(
        ErrorResponse(
          statusCode: 400,
          message: LocaleKeys.unknown_error.tr(),
        ),
      );
    }
  }

  Future clear() async {
    await store.delete(_db, finder: Finder());
  }

  Filter _buildFilter({
    required BookingFilter filter,
  }) {
    return Filter.custom(
      (record) {
        final booking = BookingEntity.fromJson(
          record.value as Json,
        );

        if (filter.eventDate != null) {
          return booking.eventDate == filter.eventDate;
        }

        if (filter.eventName != null) {
          return booking.eventName?.toLowerCase() ==
              filter.eventName?.toLowerCase();
        }

        return true;
      },
    );
  }
}
