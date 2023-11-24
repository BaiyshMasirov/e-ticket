import 'package:eticket/data/models/history/user_bookings_dto/user_bookings_dto.dart';
import 'package:sembast/sembast.dart';

class HistoryBookingDataSources {
  final Future<Database> _db;

  HistoryBookingDataSources({
    required Future<Database> db,
  }) : _db = db;

  static const String folderName = 'History';
  final store = stringMapStoreFactory.store(folderName);

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
