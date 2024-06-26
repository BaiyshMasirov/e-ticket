import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/di/injector.dart';
import 'package:eticket/firebase_options.dart';
import 'package:eticket/presentation/app.dart';
import 'package:eticket/presentation/app_wrappers/app_wrapper.dart';
import 'package:eticket/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
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
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Logger.configureErrorHandling();

  await injectDependencies();
}
