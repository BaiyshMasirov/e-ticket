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
              page: BookingHistoryRoute.page,
              path: RouteConstants.bookingHistoryScreen,
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
          page: BookingTicketsRoute.page,
          path: RouteConstants.bookingTickets,
        ),
        AutoRoute(
          page: PaymentMethodsRoute.page,
          path: RouteConstants.paymentMethods,
        ),
        AutoRoute(
          page: PaymentWebViewRoute.page,
          path: RouteConstants.paymentWebView,
        ),
        AutoRoute(
          page: ScanTicketRoute.page,
          path: RouteConstants.scanTickets,
        ),
        AutoRoute(
          page: RefreshPasswordRoute.page,
          path: RouteConstants.refreshPassword,
        ),
        AutoRoute(
          page: PinCodeCreateRoute.page,
          path: RouteConstants.pinCodeCreate,
        ),
        AutoRoute(
          page: PinCodeVerifyRoute.page,
          path: RouteConstants.pinCodeVerify,
        ),
      ];
}
