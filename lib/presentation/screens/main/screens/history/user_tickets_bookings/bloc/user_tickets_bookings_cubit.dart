import 'package:eticket/data/models/history/user_bookings_dto/user_bookings_dto.dart';
import 'package:eticket/data/models/history/user_tickets_bookings_dto/user_tickets_bookings_dto.dart';
import 'package:eticket/data/sembast_database/sembast_database.dart';
import 'package:eticket/domain/repository/booking_repository.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/bloc/user_tickets_bookings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class UserTicketsBookingsCubit extends Cubit<UserTicketsBookingsState> {
  final BookingRepository bookingRepository;

  UserTicketsBookingsCubit._(BookingRepository repo)
      : bookingRepository = repo,
        super(const UserTicketsBookingsState.initial());

  Future<void> refreshPage({required String id}) async {
    emit(
      const UserTicketsBookingsState.initial(),
    );
    await getUserTicketsId(id: id);
  }

  Future<void> getUserTicketsId({required String id}) async {
    emit(const UserTicketsBookingsState.loading());

    final result = await bookingRepository.getUserTicketsId(id);
    result.fold(
      (e) => emit(UserTicketsBookingsState.error(errorMessage: e.errorMessage)),
      (data) => emit(UserTicketsBookingsState.data(data: data)),
    );
  }

  Future<void> clear() async {
    emit(
      const UserTicketsBookingsState.initial(),
    );
  }

  Future<void> saveUserBookingsToDatabase(
      List<UserTicketsBookingsDto> userBookings) async {
    try {
      await SembastDatabase.instance.saveUserBookings(userBookings);
    } catch (e) {
      print("Error saving data to Sembast: $e");
    }
  }

  factory UserTicketsBookingsCubit.initialize() {
    return UserTicketsBookingsCubit._(GetIt.I.get());
  }
}
