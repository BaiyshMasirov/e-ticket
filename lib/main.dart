import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/sembast_database/sembast_database.dart';
import 'package:eticket/di/injector.dart';
import 'package:eticket/presentation/app.dart';
import 'package:eticket/presentation/app_wrappers/app_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  final ensureInitialized = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: ensureInitialized);
  await EasyLocalization.ensureInitialized();
  await _initializeApp();
  runApp(
    AppWrapper(
      child: App(),
    ),
  );
}

// initializing app dependencies
Future<void> _initializeApp() async {
  await injectDependencies();
}
