import 'package:common/common.dart';
import 'package:eticket/data/data.dart';

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
    final response = await handleRemoteRequest(
      request: () =>
          _bookingRemoteDatasource.getUserBookings(filter: filter, page: page),
    );

    return response;
  }

  Future<Either<RequestFailure, List<UserTicketsBookingsDto>>> getUserTicketsId(
      String id) async {
    final response = await handleRemoteRequest(
      request: () => _bookingRemoteDatasource.getUserTicketsBookings(id),
    );

    return response;
  }
}
