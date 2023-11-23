import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {
  static final AppDatabase _singleton = AppDatabase._();

  static AppDatabase get instance => _singleton;

  late Completer<Database> _dbOpenCompleter;

  AppDatabase._() {
    _dbOpenCompleter = Completer();
  }

  Future<Database> get database async {
    if (_dbOpenCompleter.isCompleted) {
      return _dbOpenCompleter.future;
    } else {
      _openDatabase();
      return _dbOpenCompleter.future;
    }
  }

  Future _openDatabase() async {
    try {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      final dbPath = join(appDocumentDir.path, 'booking.db');
      final database = await databaseFactoryIo.openDatabase(dbPath);
      _dbOpenCompleter.complete(database);
    } catch (e) {
      _dbOpenCompleter.completeError(e);
    }
  }
}
