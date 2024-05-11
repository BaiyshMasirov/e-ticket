import 'package:eticket/data/data.dart';
import 'package:eticket/data/models/booking/booking_paging_dto.dart';
import 'package:sembast/sembast.dart';

class HistoryLocalDatasources {
  final Database _db;

  HistoryLocalDatasources({
    required Database db,
  }) : _db = db;

  static const String folderName = 'History';
  final store = stringMapStoreFactory.store(folderName);

  Future saveHistoryBooking({required BookingPagingDto userBooking}) async {
    final recordKey =
        userBooking.bookingsList.map((item) => item.toString()).join(',');

    await store.record(recordKey).put(_db, userBooking.toJson());
  }

  Future clearAllHistoryBookings() async {
    await store.delete(_db, finder: Finder());
  }

  Future<BookingPagingDto?> getAllHistoryBookings() async {
    final recordSnapshot = await store.findFirst(_db);

    if (recordSnapshot != null) {
      final booking = BookingPagingDto.fromJson(recordSnapshot.value);
      return booking;
    }

    return null;
  }
}
