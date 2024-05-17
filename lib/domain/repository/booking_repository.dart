import 'package:dartz/dartz.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/models/models.dart';

class BookingRepository with NetworkRemoteRepositoryMixin {
  final BookingRemoteDatasource _bookingRemoteDatasource;
  final BookingHistoryLocalDatasources _historyBookingDatasource;

  BookingRepository({
    required BookingRemoteDatasource bookingRemoteDatasource,
    required BookingHistoryLocalDatasources historyBookingDatasource,
  })  : _bookingRemoteDatasource = bookingRemoteDatasource,
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

  Future<Either<RequestFailure, Fresh<BookingPagingModel>>> getUserBookings({
    required int page,
    required int pageSize,
    required BookingFilter filter,
    required bool? prevIsFreshData,
  }) async {
    if (prevIsFreshData != null && !prevIsFreshData) {
      final storageResponse = await handleRemoteRequest(
        request: () => _historyBookingDatasource.getUserBookings(
          bookingFilter: filter,
          page: page,
          pageSize: pageSize,
        ),
      );

      return storageResponse.fold(
        (l) => left(l),
        (data) => right(
          Fresh.no(
            BookingPagingModel.fromEntity(entity: data),
          ),
        ),
      );
    }

    final response = await handleRemoteRequest(
      request: () => _bookingRemoteDatasource.getUserBookings(
        filter: filter,
        pageSize: pageSize,
        page: page,
      ),
    );

    return response.fold((responseFailure) {
      return responseFailure.maybeWhen(
        orElse: () async {
          final storageResponse = await handleRemoteRequest(
            request: () => _historyBookingDatasource.getUserBookings(
              bookingFilter: filter,
              page: page,
              pageSize: pageSize,
            ),
          );

          return storageResponse.fold(
            (l) => left(responseFailure),
            (data) => right(
              Fresh.no(
                BookingPagingModel.fromEntity(entity: data),
              ),
            ),
          );
        },
      );
    }, (data) async {
      if (page == Constants.initialPage) {
        await _historyBookingDatasource.clear();
      }

      final bookingPagingModel = BookingPagingModel.fromDto(dto: data);

      await _historyBookingDatasource.saveHistoryBooking(
        bookingPaging: bookingPagingModel.toEntity(),
      );

      return right(Fresh.yes(bookingPagingModel));
    });
  }

  Future<void> clearBookingSavedData() async {
    await _historyBookingDatasource.clear();
  }
}
