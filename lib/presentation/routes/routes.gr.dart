// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:eticket/common/common.dart' as _i20;
import 'package:eticket/data/data.dart' as _i16;
import 'package:eticket/presentation/screens/auth/login/login_screen.dart'
    as _i5;
import 'package:eticket/presentation/screens/auth/register/register_screen.dart'
    as _i8;
import 'package:eticket/presentation/screens/event/event_screen.dart' as _i2;
import 'package:eticket/presentation/screens/events_by_type/events_by_type_screen.dart'
    as _i3;
import 'package:eticket/presentation/screens/main/main_screen.dart' as _i6;
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart'
    as _i19;
import 'package:eticket/presentation/screens/main/screens/categories/categories_screen.dart'
    as _i1;
import 'package:eticket/presentation/screens/main/screens/history/history_screen/history_screen.dart'
    as _i4;
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/user_tickets_bookings_screen.dart'
    as _i14;
import 'package:eticket/presentation/screens/main/screens/search/search_screen.dart'
    as _i9;
import 'package:eticket/presentation/screens/main/screens/settings/settings_screen.dart'
    as _i10;
import 'package:eticket/presentation/screens/payment/payment_methods/payment_methods_screen.dart'
    as _i7;
import 'package:eticket/presentation/screens/splash/splash_screen.dart' as _i11;
import 'package:eticket/presentation/screens/ticket_seat_places/ticket_seat_places_screen.dart'
    as _i12;
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_screen.dart'
    as _i13;
import 'package:flutter/cupertino.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    CategoriesRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CategoriesScreen(),
      );
    },
    EventRoute.name: (routeData) {
      final args = routeData.argsAs<EventRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.EventScreen(
          event: args.event,
          key: args.key,
        ),
      );
    },
    EventsByTypeRoute.name: (routeData) {
      final args = routeData.argsAs<EventsByTypeRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.EventsByTypeScreen(
          eventKeyValue: args.eventKeyValue,
          key: args.key,
        ),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HistoryScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.MainScreen(
          initialTab: args.initialTab,
          key: args.key,
        ),
      );
    },
    PaymentMethodsRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodsRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.PaymentMethodsScreen(
          preciseCost: args.preciseCost,
          bookingId: args.bookingId,
          key: args.key,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RegisterScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashScreen(),
      );
    },
    TicketSeatPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketSeatPlacesRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.TicketSeatPlacesScreen(
          locationType: args.locationType,
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    TicketStandingPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketStandingPlacesRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.TicketStandingPlacesScreen(
          eventId: args.eventId,
          dateTime: args.dateTime,
          key: args.key,
        ),
      );
    },
    UserTicketsBookingsRoute.name: (routeData) {
      final args = routeData.argsAs<UserTicketsBookingsRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.UserTicketsBookingsScreen(
          tiketId: args.tiketId,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesScreen]
class CategoriesRoute extends _i15.PageRouteInfo<void> {
  const CategoriesRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EventScreen]
class EventRoute extends _i15.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required _i16.EventDto event,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          EventRoute.name,
          args: EventRouteArgs(
            event: event,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const _i15.PageInfo<EventRouteArgs> page =
      _i15.PageInfo<EventRouteArgs>(name);
}

class EventRouteArgs {
  const EventRouteArgs({
    required this.event,
    this.key,
  });

  final _i16.EventDto event;

  final _i17.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i3.EventsByTypeScreen]
class EventsByTypeRoute extends _i15.PageRouteInfo<EventsByTypeRouteArgs> {
  EventsByTypeRoute({
    required _i16.KeyValueMapDto eventKeyValue,
    _i18.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          EventsByTypeRoute.name,
          args: EventsByTypeRouteArgs(
            eventKeyValue: eventKeyValue,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventsByTypeRoute';

  static const _i15.PageInfo<EventsByTypeRouteArgs> page =
      _i15.PageInfo<EventsByTypeRouteArgs>(name);
}

class EventsByTypeRouteArgs {
  const EventsByTypeRouteArgs({
    required this.eventKeyValue,
    this.key,
  });

  final _i16.KeyValueMapDto eventKeyValue;

  final _i18.Key? key;

  @override
  String toString() {
    return 'EventsByTypeRouteArgs{eventKeyValue: $eventKeyValue, key: $key}';
  }
}

/// generated route for
/// [_i4.HistoryScreen]
class HistoryRoute extends _i15.PageRouteInfo<void> {
  const HistoryRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainScreen]
class MainRoute extends _i15.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i19.MAIN_SCREEN_TAB initialTab = _i19.MAIN_SCREEN_TAB.HOME,
    _i18.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            initialTab: initialTab,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i15.PageInfo<MainRouteArgs> page =
      _i15.PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.initialTab = _i19.MAIN_SCREEN_TAB.HOME,
    this.key,
  });

  final _i19.MAIN_SCREEN_TAB initialTab;

  final _i18.Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{initialTab: $initialTab, key: $key}';
  }
}

/// generated route for
/// [_i7.PaymentMethodsScreen]
class PaymentMethodsRoute extends _i15.PageRouteInfo<PaymentMethodsRouteArgs> {
  PaymentMethodsRoute({
    required double preciseCost,
    required String bookingId,
    _i18.Key? key,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<PaymentMethodsRouteArgs> page =
      _i15.PageInfo<PaymentMethodsRouteArgs>(name);
}

class PaymentMethodsRouteArgs {
  const PaymentMethodsRouteArgs({
    required this.preciseCost,
    required this.bookingId,
    this.key,
  });

  final double preciseCost;

  final String bookingId;

  final _i18.Key? key;

  @override
  String toString() {
    return 'PaymentMethodsRouteArgs{preciseCost: $preciseCost, bookingId: $bookingId, key: $key}';
  }
}

/// generated route for
/// [_i8.RegisterScreen]
class RegisterRoute extends _i15.PageRouteInfo<void> {
  const RegisterRoute({List<_i15.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SearchScreen]
class SearchRoute extends _i15.PageRouteInfo<void> {
  const SearchRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SettingsScreen]
class SettingsRoute extends _i15.PageRouteInfo<void> {
  const SettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TicketSeatPlacesScreen]
class TicketSeatPlacesRoute
    extends _i15.PageRouteInfo<TicketSeatPlacesRouteArgs> {
  TicketSeatPlacesRoute({
    required _i20.LocationType locationType,
    required String eventId,
    _i18.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          TicketSeatPlacesRoute.name,
          args: TicketSeatPlacesRouteArgs(
            locationType: locationType,
            eventId: eventId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketSeatPlacesRoute';

  static const _i15.PageInfo<TicketSeatPlacesRouteArgs> page =
      _i15.PageInfo<TicketSeatPlacesRouteArgs>(name);
}

class TicketSeatPlacesRouteArgs {
  const TicketSeatPlacesRouteArgs({
    required this.locationType,
    required this.eventId,
    this.key,
  });

  final _i20.LocationType locationType;

  final String eventId;

  final _i18.Key? key;

  @override
  String toString() {
    return 'TicketSeatPlacesRouteArgs{locationType: $locationType, eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i13.TicketStandingPlacesScreen]
class TicketStandingPlacesRoute
    extends _i15.PageRouteInfo<TicketStandingPlacesRouteArgs> {
  TicketStandingPlacesRoute({
    required String eventId,
    required DateTime dateTime,
    _i18.Key? key,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<TicketStandingPlacesRouteArgs> page =
      _i15.PageInfo<TicketStandingPlacesRouteArgs>(name);
}

class TicketStandingPlacesRouteArgs {
  const TicketStandingPlacesRouteArgs({
    required this.eventId,
    required this.dateTime,
    this.key,
  });

  final String eventId;

  final DateTime dateTime;

  final _i18.Key? key;

  @override
  String toString() {
    return 'TicketStandingPlacesRouteArgs{eventId: $eventId, dateTime: $dateTime, key: $key}';
  }
}

/// generated route for
/// [_i14.UserTicketsBookingsScreen]
class UserTicketsBookingsRoute
    extends _i15.PageRouteInfo<UserTicketsBookingsRouteArgs> {
  UserTicketsBookingsRoute({
    required String tiketId,
    _i18.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          UserTicketsBookingsRoute.name,
          args: UserTicketsBookingsRouteArgs(
            tiketId: tiketId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UserTicketsBookingsRoute';

  static const _i15.PageInfo<UserTicketsBookingsRouteArgs> page =
      _i15.PageInfo<UserTicketsBookingsRouteArgs>(name);
}

class UserTicketsBookingsRouteArgs {
  const UserTicketsBookingsRouteArgs({
    required this.tiketId,
    this.key,
  });

  final String tiketId;

  final _i18.Key? key;

  @override
  String toString() {
    return 'UserTicketsBookingsRouteArgs{tiketId: $tiketId, key: $key}';
  }
}
