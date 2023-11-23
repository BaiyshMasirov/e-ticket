import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/data/sembast_database/booking_sembast_data_sources.dart';
import 'package:eticket/data/sembast_database/history_booking_data_sources.dart';

class BookingRepository with NetworkRemoteRepositoryMixin {
  final BookingRemoteDatasource _bookingRemoteDatasource;

  BookingRepository({
    required BookingRemoteDatasource bookingRemoteDatasource,
  }) : _bookingRemoteDatasource = bookingRemoteDatasource;

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
    final historyDataSource = HistoryBookingDataSources();
    final response = await handleRemoteRequest(
      request: () =>
          _bookingRemoteDatasource.getUserBookings(filter: filter, page: page),
    );

    return response.fold((l) {
      return l.maybeWhen(
        orElse: () => left(l),
        noConnection: (_, __) async {
          final currentHistory =
              await historyDataSource.getAllHistoryBookings();

          return right(currentHistory!);
        },
      );
    }, (r) async {
      await historyDataSource.clearAllHistoryBookings();

      await historyDataSource.saveHistoryBooking(r);

      return right(r);
    });
  }

  Future<Either<RequestFailure, List<UserTicketsBookingsDto>>> getUserTicketsId(
      String id) async {
    final dataSource = BookingSembastDataSources();
    final response = await handleRemoteRequest(
      request: () => _bookingRemoteDatasource.getUserTicketsBookings(id),
    );

    return response.fold((l) async {
      return l.maybeWhen(
        orElse: () => left(l),
        noConnection: (_, __) async {
          final currentBookingList = await dataSource.getAllBookingsTiccket();

          return right(currentBookingList);
        },
      );
    }, (r) async {
      await dataSource.clearAllBookingsTiccket();

      await dataSource.saveBookingsTicket(r);

      return right(r);
    });
  }
}
