import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';

extension DatabaseX on Database {
  static Future<Database> openDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dpPath = join(appDocumentDir.path, 'booking.db');

    return await databaseFactoryIo.openDatabase(dpPath);
  }
}
