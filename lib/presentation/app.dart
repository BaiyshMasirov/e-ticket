import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/presentation/routes/routes.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class App extends HookWidget {
  final _appRouter = AppRouter();

  App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        FlutterNativeSplash.remove();
        return null;
      },
    );
    return MaterialApp.router(
      title: 'e-ticket',
      scrollBehavior: const CupertinoScrollBehavior(),
      themeMode: ThemeMode.dark,
      theme: AppTheme.getLightTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: _appRouter.config(),
    );
  }
}
