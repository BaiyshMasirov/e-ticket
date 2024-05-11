import 'package:eticket/data/data.dart';
import 'package:sembast/sembast.dart';

class BookingLocalDataSources {
  final Database _db;

  BookingLocalDataSources({
    required Database db,
  }) : _db = db;

  static const String folderName = 'Bookings';
  final store = stringMapStoreFactory.store(folderName);

  Future saveBookingsTicket(
      {required List<TicketsDto> todo}) async {
    final recordKeys = todo.map((item) => item.id).toList();

    await store
        .records(recordKeys)
        .put(_db, todo.map((item) => item.toJson()).toList());
  }

  Future clearAllBookingsTiccket() async {
    await store.delete(_db, finder: Finder());
  }

  Future<List<TicketsDto>> getAllBookingsTicket() async {
    final recordSnapshot = await store.find(_db);

    return recordSnapshot
        .map((snapshot) => TicketsDto.fromJson(snapshot.value))
        .toList();
  }
}
