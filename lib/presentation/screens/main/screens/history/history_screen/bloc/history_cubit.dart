import 'package:eticket/data/data.dart';
import 'package:eticket/domain/repository/booking_repository.dart';
import 'package:eticket/presentation/app_blocs/snackbar/snackbar_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_screen/bloc/history_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final BookingRepository bookingRepository;
  final SnackbarCubit snackbarCubit;

  int _page = 1;

  HistoryCubit._({
    required this.bookingRepository,
    required this.snackbarCubit,
  }) : super(const HistoryState.initial(
          bookingsList: [],
          filter: BookingFilter(),
        ));

  Future<void> clearFilter() async {
    emit(state.copyWith(filter: const BookingFilter()));
    refreshPage();
  }

  Future<void> refreshPage({BookingFilter? filter}) async {
    _page = 1;

    emit(
      HistoryState.initial(
        bookingsList: [],
        filter: filter ?? const BookingFilter(),
      ),
    );
    await getUserBookings();
  }

  Future<void> getUserBookings() async {
    emit(HistoryState.loadInProgress(
      filter: state.filter,
      bookingsList: state.bookingsList,
    ));
    final result = await bookingRepository.getUserBookings(
      filter: state.filter,
      page: _page,
    );

    result.fold(
      (e) {
        snackbarCubit.showErrorSnackbar(message: e.errorMessage);
        emit(HistoryState.loadError(
          bookingsList: state.bookingsList,
          filter: state.filter,
          errorMessage: e.errorMessage,
        ));
      },
      (data) {
        _page++;
        emit(HistoryState.loadSuccess(
          bookingsList: [...state.bookingsList, ...data.bookingsList],
          filter: state.filter,
          isNextPageAvailable: _page < data.maxPage,
        ));
      },
    );
  }

  factory HistoryCubit.initialize() {
    return HistoryCubit._(
        bookingRepository: GetIt.I.get(), snackbarCubit: GetIt.I.get());
  }
}
