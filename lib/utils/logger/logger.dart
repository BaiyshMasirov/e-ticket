import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class Logger {
  static void configureErrorHandling() {
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(kDebugMode);

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      recordError(
        exception: error,
        reason: 'PlatformDispatcher.onError',
        stackTrace: stack,
      );

      return true;
    };
  }

  static void setUserIdentifier(String login) {
    FirebaseCrashlytics.instance.setUserIdentifier(login);
  }

  static void clearUserIdentifier() {
    FirebaseCrashlytics.instance.setUserIdentifier('');
  }

  static void recordError({
    required dynamic exception,
    required dynamic reason,
    Iterable<String> information = const [],
    StackTrace? stackTrace,
  }) {
    FirebaseCrashlytics.instance.recordError(
      exception,
      stackTrace,
      reason: reason,
      information: information,
    );
  }
}
