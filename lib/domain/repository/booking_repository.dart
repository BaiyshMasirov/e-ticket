import 'package:common/common.dart';
import 'package:eticket/data/data.dart';

class BookingRepository with NetworkRemoteRepositoryMixin {
  final BookingRemoteDatasource _bookingRemoteDatasource;
  final HistoryLocalDatasources _historyBookingDatasource;
  final BookingLocalDataSources _bookingDatasource;

  BookingRepository({
    required BookingRemoteDatasource bookingRemoteDatasource,
    required HistoryLocalDatasources historyBookingDatasource,
    required BookingLocalDataSources bookingDatasource,
  })  : _bookingRemoteDatasource = bookingRemoteDatasource,
        _bookingDatasource = bookingDatasource,
        _historyBookingDatasource = historyBookingDatasource;

  Future<Either<RequestFailure, Unit>> createBooking({
    required CreateBookingCommandDto createBookingCommandDto,
  }) async {
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
      await _historyBookingDatasource.saveHistoryBooking(userBooking: r);

      return right(r);
    });
  }

  Future<Either<RequestFailure, List<UserTicketsBookingsDto>>>
      getUserTicketsId({
    required String id,
  }) async {
    final response = await handleRemoteRequest(
      request: () => _bookingRemoteDatasource.getUserTicketsBookings(id),
    );

    return response.fold((l) async {
      return l.maybeWhen(
        orElse: () => left(l),
        noConnection: (_, __) async {
          final currentBookingList =
              await _bookingDatasource.getAllBookingsTicket();

          return right(currentBookingList);
        },
      );
    }, (r) async {
      await _bookingDatasource.clearAllBookingsTiccket();
      await _bookingDatasource.saveBookingsTicket(todo: r);

      return right(r);
    });
  }
}
