import 'package:eticket/data/models/history/user_bookings_dto/user_bookings_dto.dart';
import 'package:eticket/data/sembast_database/sembast_database.dart';
import 'package:sembast/sembast.dart';

class HistoryBookingDataSources {
  static const String folderName = 'History';
  final store = stringMapStoreFactory.store(folderName);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future saveHistoryBooking(UserBookingsDto userBooking) async {
    final recordKey =
        userBooking.bookingsList.map((item) => item.toString()).join(',');

    await store.record(recordKey).put(await _db, userBooking.toJson());
  }

  Future clearAllHistoryBookings() async {
    await store.delete(await _db, finder: Finder());
  }

  Future<UserBookingsDto?> getAllHistoryBookings() async {
    final recordSnapshot = await store.findFirst(await _db);

    if (recordSnapshot != null) {
      final booking = UserBookingsDto.fromJson(recordSnapshot.value);
      return booking;
    }

    return null;
  }
}
