import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/data/sembast_database/booking_sembast_data_sources.dart';
import 'package:eticket/data/sembast_database/history_booking_data_sources.dart';

class BookingRepository with NetworkRemoteRepositoryMixin {
  final BookingRemoteDatasource _bookingRemoteDatasource;
  final HistoryBookingDataSources _historyBookingDatasource;
  final BookingSembastDataSources _bookingDatasource;

  BookingRepository({
    required BookingRemoteDatasource bookingRemoteDatasource,
    required HistoryBookingDataSources historyBookingDatasource,
    required BookingSembastDataSources bookingDatasource,
  })  : _bookingRemoteDatasource = bookingRemoteDatasource,
        _bookingDatasource = bookingDatasource,
        _historyBookingDatasource = historyBookingDatasource;

  Future<Either<RequestFailure, Unit>> createBooking(
    CreateBookingCommandDto createBookingCommandDto,
  ) async {
    final response = await handleRemoteRequest(
      request: () =>
          _bookingRemoteDatasource.createBooking(createBookingCommandDto),
    );

    return response.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  Future<Either<RequestFailure, UserBookingsDto>> getUserBookings({
    required int page,
    required UserBookingsFilter filter,
  }) async {
    final response = await handleRemoteRequest(
      request: () =>
          _bookingRemoteDatasource.getUserBookings(filter: filter, page: page),
    );

    return response.fold((l) {
      return l.maybeWhen(
        orElse: () => left(l),
        noConnection: (_, __) async {
          final currentHistory =
              await _historyBookingDatasource.getAllHistoryBookings();

          return right(currentHistory!);
        },
      );
    }, (r) async {
      await _historyBookingDatasource.clearAllHistoryBookings();

      await _historyBookingDatasource.saveHistoryBooking(r);

      return right(r);
    });
  }

  Future<Either<RequestFailure, List<UserTicketsBookingsDto>>> getUserTicketsId(
      String id) async {
    final response = await handleRemoteRequest(
      request: () => _bookingRemoteDatasource.getUserTicketsBookings(id),
    );

    return response.fold((l) async {
      return l.maybeWhen(
        orElse: () => left(l),
        noConnection: (_, __) async {
          final currentBookingList =
              await _bookingDatasource.getAllBookingsTiccket();

          return right(currentBookingList);
        },
      );
    }, (r) async {
      await _bookingDatasource.clearAllBookingsTiccket();

      await _bookingDatasource.saveBookingsTicket(r);

      return right(r);
    });
  }
}
