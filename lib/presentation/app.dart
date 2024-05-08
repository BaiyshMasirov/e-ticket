import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/auth/authentication.dart';
import 'package:eticket/domain/repository/repository.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:eticket/presentation/routes/routes.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:eticket/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) => state.maybeWhen(
            authenticated: () {
              FlutterNativeSplash.remove();

              _appRouter.pushAndPopUntil(
                MainRoute(),
                predicate: (route) => false,
              );
            },
            unauthenticated: () {
              FlutterNativeSplash.remove();

              Logger.clearUserIdentifier();

              clearDatabase();

              _appRouter.pushAndPopUntil(
                const LoginRoute(),
                predicate: (route) => false,
              );
            },
            orElse: () => null,
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'e-ticket',
        scrollBehavior: const CupertinoScrollBehavior(),
        themeMode: context.select<SettingsCubit, ThemeMode>(
          (value) => value.state.themeMode,
        ),
        theme: AppTheme.getLightTheme(),
        darkTheme: AppTheme.getDarkTheme(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: _appRouter.config(),
        builder: (context, child) => Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) => BlocListener<SnackbarCubit, SnackbarState>(
                listener: (context, state) => state.whenOrNull(
                  error: (message) => SnackbarAlert.showError(
                    context: context,
                    message: message?.tr() ?? LocaleKeys.unknown_error.tr(),
                  ),
                  success: (message) => SnackbarAlert.showSuccess(
                    context: context,
                    message: message.tr(),
                  ),
                ),
                child: UnfocusPointer(child: child),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> clearDatabase() async {
    await GetIt.I.get<BookingRepository>().clearBookingSavedData();
  }
}
