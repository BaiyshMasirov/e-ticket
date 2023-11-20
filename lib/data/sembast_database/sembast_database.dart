import 'package:eticket/data/models/history/user_tickets_bookings_dto/user_tickets_bookings_dto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  static const String _userBookingsStoreName = 'user_bookings';
  static final SembastDatabase _singleton = SembastDatabase._();
  Database? _database;

  SembastDatabase._();

  static SembastDatabase get instance => _singleton;

  Future<void> _initializeDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = '${appDocumentDir.path}/my_database.db';
    _database = await databaseFactoryIo.openDatabase(dbPath);
  }

  Future<void> saveUserBookings(
      List<UserTicketsBookingsDto> userBookings) async {
    await _initializeDatabase();
    final store = intMapStoreFactory.store(_userBookingsStoreName);
    await _database!.transaction((txn) async {
      await store.delete(txn);

      final List<Map<String, dynamic>> userBookingsList =
          userBookings.map((booking) => booking.toJson()).toList();
      await store.record(1).put(txn, {'list': userBookingsList});
    });
  }

  Future<List<UserTicketsBookingsDto>?> getUserBookings() async {
    await _initializeDatabase();
    final store = intMapStoreFactory.store(_userBookingsStoreName);
    final snapshot = await store.findFirst(_database!);

    if (snapshot != null && snapshot['list'] != null) {
      final dynamic userBookingsListDynamic = snapshot['list'];

      if (userBookingsListDynamic is List<dynamic>) {
        final List<Map<String, dynamic>> userBookingsList =
            List<Map<String, dynamic>>.from(userBookingsListDynamic);
        return userBookingsList
            .map((bookingMap) => UserTicketsBookingsDto.fromJson(
                Map<String, dynamic>.from(bookingMap)))
            .toList();
      }
    }

    return null;
  }
}
