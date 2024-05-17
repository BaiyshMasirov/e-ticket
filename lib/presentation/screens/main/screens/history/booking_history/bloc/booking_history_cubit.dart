import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/domain/repository/booking_repository.dart';
import 'package:eticket/presentation/app_blocs/snackbar/snackbar_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_history/bloc/booking_history_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BookingHistoryCubit extends Cubit<BookingHistoryState> {
  final BookingRepository bookingRepository;
  final SnackbarCubit snackbarCubit;

  int _page = Constants.initialPage;
  final _pageSize = Constants.initialPageSize;

  BookingHistoryCubit._({
    required this.bookingRepository,
    required this.snackbarCubit,
  }) : super(const BookingHistoryState.initial(
          bookings: [],
          filter: BookingFilter(),
          isFreshData: null,
        ));

  Future<void> clearFilter() async {
    emit(state.copyWith(filter: const BookingFilter()));
    refresh();
  }

  Future<void> refresh({
    BookingFilter? filter,
  }) async {
    _page = 1;

    emit(
      BookingHistoryState.initial(
        bookings: [],
        filter: filter ?? const BookingFilter(),
        isFreshData: null,
      ),
    );
    await getNextPage();
  }

  Future<void> getNextPage() async {
    emit(BookingHistoryState.loading(
      filter: state.filter,
      bookings: state.bookings,
      isFreshData: state.isFreshData,
    ));

    final result = await bookingRepository.getUserBookings(
      filter: state.filter,
      page: _page,
      prevIsFreshData: state.isFreshData,
      pageSize: _pageSize,
    );

    result.fold(
      (e) {
        snackbarCubit.showErrorSnackbar(message: e.errorMessage);

        emit(BookingHistoryState.error(
          bookings: state.bookings,
          filter: state.filter,
          errorMessage: e.errorMessage,
          isFreshData: state.isFreshData,
        ));
      },
      (data) {
        _page++;

        if (data.entity.bookings.isEmpty) {
          emit(
            BookingHistoryState.empty(
              bookings: state.bookings,
              filter: state.filter,
              isFreshData: data.isFresh,
            ),
          );
        } else {
          emit(BookingHistoryState.success(
            bookings: [
              ...state.bookings,
              ...data.entity.bookings.map((e) => Fresh(
                    entity: e,
                    isFresh: data.isFresh,
                  )),
            ],
            filter: state.filter,
            isNextPageAvailable: _page < data.entity.maxPage,
            isFreshData: data.isFresh,
          ));
        }
      },
    );
  }

  factory BookingHistoryCubit.initialize() {
    return BookingHistoryCubit._(
        bookingRepository: GetIt.I.get(), snackbarCubit: GetIt.I.get());
  }
}
