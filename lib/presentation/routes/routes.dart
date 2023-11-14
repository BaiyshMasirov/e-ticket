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
              page: SearchRoute.page,
              path: RouteConstants.homeScreen,
            ),
            AutoRoute(
              page: CategoriesRoute.page,
              path: RouteConstants.categoriesScreen,
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
          page: EventsByTypeRoute.page,
          path: RouteConstants.eventsByTypeScreen,
        ),
        AutoRoute(
          page: EventRoute.page,
          path: RouteConstants.eventScreen,
        ),
        AutoRoute(
          page: TicketStandingPlacesRoute.page,
          path: RouteConstants.ticketStandingPlaces,
        ),
        AutoRoute(
          page: TicketSeatPlacesRoute.page,
          path: RouteConstants.ticketSeatPlaces,
        ),
        AutoRoute(
          page: BishkekArenaPlacesRoute.page,
          path: RouteConstants.bishkekArenaSeatPlaces,
        ),
      ];
}
