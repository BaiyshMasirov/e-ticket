import 'package:eticket/data/models/history/user_tickets_bookings_dto/user_tickets_bookings_dto.dart';
import 'package:eticket/data/sembast_database/sembast_database.dart';
import 'package:sembast/sembast.dart';

class BookingSembastDataSources {
  static const String folderName = 'Bookings';
  final store = stringMapStoreFactory.store(folderName);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future saveBookingsTicket(List<UserTicketsBookingsDto> todo) async {
    final recordKeys = todo.map((item) => item.id).toList();

    await store
        .records(recordKeys)
        .put(await _db, todo.map((item) => item.toJson()).toList());
  }

  Future clearAllBookingsTiccket() async {
    await store.delete(await _db, finder: Finder());
  }

  Future<List<UserTicketsBookingsDto>> getAllBookingsTiccket() async {
    final recordSnapshot = await store.find(await _db);
    final bookingsList = <UserTicketsBookingsDto>[];
    for (var snapshot in recordSnapshot) {
      final bookings = UserTicketsBookingsDto.fromJson(snapshot.value);
      bookingsList.add(bookings);
    }
    return bookingsList;
  }
}
