import 'package:eticket/data/data.dart';
import 'package:sembast/sembast.dart';

class HistoryBookingDataSources {
  final Database _db;

  HistoryBookingDataSources({
    required Database db,
  }) : _db = db;

  static const String folderName = 'History';
  final store = stringMapStoreFactory.store(folderName);

  Future saveHistoryBooking({required UserBookingsDto userBooking}) async {
    final recordKey =
        userBooking.bookingsList.map((item) => item.toString()).join(',');

    await store.record(recordKey).put(_db, userBooking.toJson());
  }

  Future clearAllHistoryBookings() async {
    await store.delete(_db, finder: Finder());
  }

  Future<UserBookingsDto?> getAllHistoryBookings() async {
    final recordSnapshot = await store.findFirst(_db);

    if (recordSnapshot != null) {
      final booking = UserBookingsDto.fromJson(recordSnapshot.value);
      return booking;
    }

    return null;
  }
}
