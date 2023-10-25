import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/routes/route_constants.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: RouteConstants.splashScreen,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: RouteConstants.loginScreen,
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: RouteConstants.registerScreen,
        ),
        AutoRoute(
          page: MainRoute.page,
          path: RouteConstants.mainScreen,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: RouteConstants.homeScreen,
            ),
            AutoRoute(
              page: SearchRoute.page,
              path: RouteConstants.searchScreen,
            ),
            AutoRoute(
              page: HistoryRoute.page,
              path: RouteConstants.historyScreen,
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: RouteConstants.settingsScreen,
            ),
          ],
        ),
        AutoRoute(
          page: EventRoute.page,
          path: RouteConstants.eventScreen,
        ),
      ];
}
