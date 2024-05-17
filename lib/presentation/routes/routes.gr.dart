// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:eticket/common/common.dart' as _i23;
import 'package:eticket/data/data.dart' as _i21;
import 'package:eticket/domain/domain.dart' as _i19;
import 'package:eticket/presentation/screens/auth/login/login_screen.dart'
    as _i6;
import 'package:eticket/presentation/screens/auth/register/register_screen.dart'
    as _i11;
import 'package:eticket/presentation/screens/event/event_screen.dart' as _i4;
import 'package:eticket/presentation/screens/events_by_type/events_by_type_screen.dart'
    as _i5;
import 'package:eticket/presentation/screens/main/main_screen.dart' as _i7;
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart'
    as _i24;
import 'package:eticket/presentation/screens/main/screens/categories/categories_screen.dart'
    as _i3;
import 'package:eticket/presentation/screens/main/screens/history/booking_history/booking_history_screen.dart'
    as _i1;
import 'package:eticket/presentation/screens/main/screens/history/booking_tickets/booking_tickets_screen.dart'
    as _i2;
import 'package:eticket/presentation/screens/main/screens/search/search_screen.dart'
    as _i13;
import 'package:eticket/presentation/screens/main/screens/settings/refresh_password/refresh_password_screen.dart'
    as _i10;
import 'package:eticket/presentation/screens/main/screens/settings/settings_view/settings_screen.dart'
    as _i14;
import 'package:eticket/presentation/screens/payment/pages/payment_web_view/payment_web_view_screen.dart'
    as _i9;
import 'package:eticket/presentation/screens/payment/payment_methods/payment_methods_screen.dart'
    as _i8;
import 'package:eticket/presentation/screens/scan_ticket/scan_ticket_screen.dart'
    as _i12;
import 'package:eticket/presentation/screens/splash/splash_screen.dart' as _i15;
import 'package:eticket/presentation/screens/ticket_seat_places/ticket_seat_places_screen.dart'
    as _i16;
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_screen.dart'
    as _i17;
import 'package:flutter/cupertino.dart' as _i22;
import 'package:flutter/material.dart' as _i20;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    BookingHistoryRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BookingHistoryScreen(),
      );
    },
    BookingTicketsRoute.name: (routeData) {
      final args = routeData.argsAs<BookingTicketsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BookingTicketsScreen(
          booking: args.booking,
          key: args.key,
        ),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoriesScreen(),
      );
    },
    EventRoute.name: (routeData) {
      final args = routeData.argsAs<EventRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EventScreen(
          event: args.event,
          key: args.key,
        ),
      );
    },
    EventsByTypeRoute.name: (routeData) {
      final args = routeData.argsAs<EventsByTypeRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EventsByTypeScreen(
          eventType: args.eventType,
          key: args.key,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.MainScreen(
          initialTab: args.initialTab,
          key: args.key,
        ),
      );
    },
    PaymentMethodsRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PaymentMethodsScreen(
          preciseCost: args.preciseCost,
          bookingId: args.bookingId,
          key: args.key,
        ),
      );
    },
    PaymentWebViewRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentWebViewRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PaymentWebViewScreen(
          bookingId: args.bookingId,
          paymentType: args.paymentType,
          onSuccess: args.onSuccess,
          key: args.key,
        ),
      );
    },
    RefreshPasswordRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RefreshPasswordScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RegisterScreen(),
      );
    },
    ScanTicketRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ScanTicketScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SplashScreen(),
      );
    },
    TicketSeatPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketSeatPlacesRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.TicketSeatPlacesScreen(
          locationType: args.locationType,
          event: args.event,
          eventDate: args.eventDate,
          key: args.key,
        ),
      );
    },
    TicketStandingPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketStandingPlacesRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.TicketStandingPlacesScreen(
          eventId: args.eventId,
          dateTime: args.dateTime,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.BookingHistoryScreen]
class BookingHistoryRoute extends _i18.PageRouteInfo<void> {
  const BookingHistoryRoute({List<_i18.PageRouteInfo>? children})
      : super(
          BookingHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingHistoryRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BookingTicketsScreen]
class BookingTicketsRoute extends _i18.PageRouteInfo<BookingTicketsRouteArgs> {
  BookingTicketsRoute({
    required _i19.Fresh<_i19.BookingModel> booking,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          BookingTicketsRoute.name,
          args: BookingTicketsRouteArgs(
            booking: booking,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BookingTicketsRoute';

  static const _i18.PageInfo<BookingTicketsRouteArgs> page =
      _i18.PageInfo<BookingTicketsRouteArgs>(name);
}

class BookingTicketsRouteArgs {
  const BookingTicketsRouteArgs({
    required this.booking,
    this.key,
  });

  final _i19.Fresh<_i19.BookingModel> booking;

  final _i20.Key? key;

  @override
  String toString() {
    return 'BookingTicketsRouteArgs{booking: $booking, key: $key}';
  }
}

/// generated route for
/// [_i3.CategoriesScreen]
class CategoriesRoute extends _i18.PageRouteInfo<void> {
  const CategoriesRoute({List<_i18.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EventScreen]
class EventRoute extends _i18.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required _i21.EventDto event,
    _i22.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          EventRoute.name,
          args: EventRouteArgs(
            event: event,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const _i18.PageInfo<EventRouteArgs> page =
      _i18.PageInfo<EventRouteArgs>(name);
}

class EventRouteArgs {
  const EventRouteArgs({
    required this.event,
    this.key,
  });

  final _i21.EventDto event;

  final _i22.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i5.EventsByTypeScreen]
class EventsByTypeRoute extends _i18.PageRouteInfo<EventsByTypeRouteArgs> {
  EventsByTypeRoute({
    required _i23.EventType eventType,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          EventsByTypeRoute.name,
          args: EventsByTypeRouteArgs(
            eventType: eventType,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventsByTypeRoute';

  static const _i18.PageInfo<EventsByTypeRouteArgs> page =
      _i18.PageInfo<EventsByTypeRouteArgs>(name);
}

class EventsByTypeRouteArgs {
  const EventsByTypeRouteArgs({
    required this.eventType,
    this.key,
  });

  final _i23.EventType eventType;

  final _i20.Key? key;

  @override
  String toString() {
    return 'EventsByTypeRouteArgs{eventType: $eventType, key: $key}';
  }
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainScreen]
class MainRoute extends _i18.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i24.MAIN_SCREEN_TAB initialTab = _i24.MAIN_SCREEN_TAB.home,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            initialTab: initialTab,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i18.PageInfo<MainRouteArgs> page =
      _i18.PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.initialTab = _i24.MAIN_SCREEN_TAB.home,
    this.key,
  });

  final _i24.MAIN_SCREEN_TAB initialTab;

  final _i20.Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{initialTab: $initialTab, key: $key}';
  }
}

/// generated route for
/// [_i8.PaymentMethodsScreen]
class PaymentMethodsRoute extends _i18.PageRouteInfo<PaymentMethodsRouteArgs> {
  PaymentMethodsRoute({
    required double preciseCost,
    required String bookingId,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          PaymentMethodsRoute.name,
          args: PaymentMethodsRouteArgs(
            preciseCost: preciseCost,
            bookingId: bookingId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentMethodsRoute';

  static const _i18.PageInfo<PaymentMethodsRouteArgs> page =
      _i18.PageInfo<PaymentMethodsRouteArgs>(name);
}

class PaymentMethodsRouteArgs {
  const PaymentMethodsRouteArgs({
    required this.preciseCost,
    required this.bookingId,
    this.key,
  });

  final double preciseCost;

  final String bookingId;

  final _i20.Key? key;

  @override
  String toString() {
    return 'PaymentMethodsRouteArgs{preciseCost: $preciseCost, bookingId: $bookingId, key: $key}';
  }
}

/// generated route for
/// [_i9.PaymentWebViewScreen]
class PaymentWebViewRoute extends _i18.PageRouteInfo<PaymentWebViewRouteArgs> {
  PaymentWebViewRoute({
    required String bookingId,
    required _i23.PaymentType paymentType,
    required dynamic Function() onSuccess,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          PaymentWebViewRoute.name,
          args: PaymentWebViewRouteArgs(
            bookingId: bookingId,
            paymentType: paymentType,
            onSuccess: onSuccess,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentWebViewRoute';

  static const _i18.PageInfo<PaymentWebViewRouteArgs> page =
      _i18.PageInfo<PaymentWebViewRouteArgs>(name);
}

class PaymentWebViewRouteArgs {
  const PaymentWebViewRouteArgs({
    required this.bookingId,
    required this.paymentType,
    required this.onSuccess,
    this.key,
  });

  final String bookingId;

  final _i23.PaymentType paymentType;

  final dynamic Function() onSuccess;

  final _i20.Key? key;

  @override
  String toString() {
    return 'PaymentWebViewRouteArgs{bookingId: $bookingId, paymentType: $paymentType, onSuccess: $onSuccess, key: $key}';
  }
}

/// generated route for
/// [_i10.RefreshPasswordScreen]
class RefreshPasswordRoute extends _i18.PageRouteInfo<void> {
  const RefreshPasswordRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RefreshPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RefreshPasswordRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RegisterScreen]
class RegisterRoute extends _i18.PageRouteInfo<void> {
  const RegisterRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ScanTicketScreen]
class ScanTicketRoute extends _i18.PageRouteInfo<void> {
  const ScanTicketRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ScanTicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanTicketRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SearchScreen]
class SearchRoute extends _i18.PageRouteInfo<void> {
  const SearchRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SettingsScreen]
class SettingsRoute extends _i18.PageRouteInfo<void> {
  const SettingsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SplashScreen]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TicketSeatPlacesScreen]
class TicketSeatPlacesRoute
    extends _i18.PageRouteInfo<TicketSeatPlacesRouteArgs> {
  TicketSeatPlacesRoute({
    required _i23.LocationType locationType,
    required _i21.EventDto event,
    required DateTime eventDate,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          TicketSeatPlacesRoute.name,
          args: TicketSeatPlacesRouteArgs(
            locationType: locationType,
            event: event,
            eventDate: eventDate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketSeatPlacesRoute';

  static const _i18.PageInfo<TicketSeatPlacesRouteArgs> page =
      _i18.PageInfo<TicketSeatPlacesRouteArgs>(name);
}

class TicketSeatPlacesRouteArgs {
  const TicketSeatPlacesRouteArgs({
    required this.locationType,
    required this.event,
    required this.eventDate,
    this.key,
  });

  final _i23.LocationType locationType;

  final _i21.EventDto event;

  final DateTime eventDate;

  final _i20.Key? key;

  @override
  String toString() {
    return 'TicketSeatPlacesRouteArgs{locationType: $locationType, event: $event, eventDate: $eventDate, key: $key}';
  }
}

/// generated route for
/// [_i17.TicketStandingPlacesScreen]
class TicketStandingPlacesRoute
    extends _i18.PageRouteInfo<TicketStandingPlacesRouteArgs> {
  TicketStandingPlacesRoute({
    required String eventId,
    required DateTime dateTime,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          TicketStandingPlacesRoute.name,
          args: TicketStandingPlacesRouteArgs(
            eventId: eventId,
            dateTime: dateTime,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketStandingPlacesRoute';

  static const _i18.PageInfo<TicketStandingPlacesRouteArgs> page =
      _i18.PageInfo<TicketStandingPlacesRouteArgs>(name);
}

class TicketStandingPlacesRouteArgs {
  const TicketStandingPlacesRouteArgs({
    required this.eventId,
    required this.dateTime,
    this.key,
  });

  final String eventId;

  final DateTime dateTime;

  final _i20.Key? key;

  @override
  String toString() {
    return 'TicketStandingPlacesRouteArgs{eventId: $eventId, dateTime: $dateTime, key: $key}';
  }
}
