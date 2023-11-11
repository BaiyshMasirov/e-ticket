// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:eticket/data/data.dart' as _i18;
import 'package:eticket/presentation/screens/auth/login/login_screen.dart'
    as _i8;
import 'package:eticket/presentation/screens/auth/register/register_screen.dart'
    as _i10;
import 'package:eticket/presentation/screens/event/event_screen.dart' as _i3;
import 'package:eticket/presentation/screens/events_by_type/events_by_type_screen.dart'
    as _i4;
import 'package:eticket/presentation/screens/main/main_screen.dart' as _i9;
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart'
    as _i21;
import 'package:eticket/presentation/screens/main/screens/categories/categories_screen.dart'
    as _i2;
import 'package:eticket/presentation/screens/main/screens/history/history_screen.dart'
    as _i6;
import 'package:eticket/presentation/screens/main/screens/search/search_screen.dart'
    as _i11;
import 'package:eticket/presentation/screens/main/screens/settings/settings_screen.dart'
    as _i12;
import 'package:eticket/presentation/screens/place_bishkek_arena/bishkek_arena_blocks/bishkek_arena_blocks_screen.dart'
    as _i1;
import 'package:eticket/presentation/screens/place_filarmonia/filarmonia_seat_places_screen.dart'
    as _i5;
import 'package:eticket/presentation/screens/place_kyrgyz_dram_theater/kyrgyz_dram_theater_seat_places_screen.dart'
    as _i7;
import 'package:eticket/presentation/screens/place_sports/sports_seat_places_screen.dart'
    as _i14;
import 'package:eticket/presentation/screens/splash/splash_screen.dart' as _i13;
import 'package:eticket/presentation/screens/ticket_booking/ticket_booking_screen.dart'
    as _i15;
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_screen.dart'
    as _i16;
import 'package:flutter/cupertino.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    BishkekArenaBlocksRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BishkekArenaBlocksScreen(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoriesScreen(),
      );
    },
    EventRoute.name: (routeData) {
      final args = routeData.argsAs<EventRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.EventScreen(
          event: args.event,
          key: args.key,
        ),
      );
    },
    EventsByTypeRoute.name: (routeData) {
      final args = routeData.argsAs<EventsByTypeRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EventsByTypeScreen(
          eventKeyValue: args.eventKeyValue,
          key: args.key,
        ),
      );
    },
    FilarmoniaSeatPlacesRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FilarmoniaSeatPlacesScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HistoryScreen(),
      );
    },
    KyrgyzDramTheaterSeatPlacesRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.KyrgyzDramTheaterSeatPlacesScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MainScreen(
          initialTab: args.initialTab,
          key: args.key,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RegisterScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SplashScreen(),
      );
    },
    SportsSeatPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<SportsSeatPlacesRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.SportsSeatPlacesScreen(
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    TicketBookingRoute.name: (routeData) {
      final args = routeData.argsAs<TicketBookingRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.TicketBookingScreen(
          dateTime: args.dateTime,
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    TicketStandingPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketStandingPlacesRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.TicketStandingPlacesScreen(
          eventId: args.eventId,
          dateTime: args.dateTime,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.BishkekArenaBlocksScreen]
class BishkekArenaBlocksRoute extends _i17.PageRouteInfo<void> {
  const BishkekArenaBlocksRoute({List<_i17.PageRouteInfo>? children})
      : super(
          BishkekArenaBlocksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BishkekArenaBlocksRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoriesScreen]
class CategoriesRoute extends _i17.PageRouteInfo<void> {
  const CategoriesRoute({List<_i17.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EventScreen]
class EventRoute extends _i17.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required _i18.EventDto event,
    _i19.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          EventRoute.name,
          args: EventRouteArgs(
            event: event,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const _i17.PageInfo<EventRouteArgs> page =
      _i17.PageInfo<EventRouteArgs>(name);
}

class EventRouteArgs {
  const EventRouteArgs({
    required this.event,
    this.key,
  });

  final _i18.EventDto event;

  final _i19.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i4.EventsByTypeScreen]
class EventsByTypeRoute extends _i17.PageRouteInfo<EventsByTypeRouteArgs> {
  EventsByTypeRoute({
    required _i18.KeyValueMapDto eventKeyValue,
    _i20.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          EventsByTypeRoute.name,
          args: EventsByTypeRouteArgs(
            eventKeyValue: eventKeyValue,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventsByTypeRoute';

  static const _i17.PageInfo<EventsByTypeRouteArgs> page =
      _i17.PageInfo<EventsByTypeRouteArgs>(name);
}

class EventsByTypeRouteArgs {
  const EventsByTypeRouteArgs({
    required this.eventKeyValue,
    this.key,
  });

  final _i18.KeyValueMapDto eventKeyValue;

  final _i20.Key? key;

  @override
  String toString() {
    return 'EventsByTypeRouteArgs{eventKeyValue: $eventKeyValue, key: $key}';
  }
}

/// generated route for
/// [_i5.FilarmoniaSeatPlacesScreen]
class FilarmoniaSeatPlacesRoute extends _i17.PageRouteInfo<void> {
  const FilarmoniaSeatPlacesRoute({List<_i17.PageRouteInfo>? children})
      : super(
          FilarmoniaSeatPlacesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilarmoniaSeatPlacesRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HistoryScreen]
class HistoryRoute extends _i17.PageRouteInfo<void> {
  const HistoryRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i7.KyrgyzDramTheaterSeatPlacesScreen]
class KyrgyzDramTheaterSeatPlacesRoute extends _i17.PageRouteInfo<void> {
  const KyrgyzDramTheaterSeatPlacesRoute({List<_i17.PageRouteInfo>? children})
      : super(
          KyrgyzDramTheaterSeatPlacesRoute.name,
          initialChildren: children,
        );

  static const String name = 'KyrgyzDramTheaterSeatPlacesRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginScreen]
class LoginRoute extends _i17.PageRouteInfo<void> {
  const LoginRoute({List<_i17.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MainScreen]
class MainRoute extends _i17.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i21.MAIN_SCREEN_TAB initialTab = _i21.MAIN_SCREEN_TAB.HOME,
    _i20.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            initialTab: initialTab,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i17.PageInfo<MainRouteArgs> page =
      _i17.PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.initialTab = _i21.MAIN_SCREEN_TAB.HOME,
    this.key,
  });

  final _i21.MAIN_SCREEN_TAB initialTab;

  final _i20.Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{initialTab: $initialTab, key: $key}';
  }
}

/// generated route for
/// [_i10.RegisterScreen]
class RegisterRoute extends _i17.PageRouteInfo<void> {
  const RegisterRoute({List<_i17.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SearchScreen]
class SearchRoute extends _i17.PageRouteInfo<void> {
  const SearchRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SettingsScreen]
class SettingsRoute extends _i17.PageRouteInfo<void> {
  const SettingsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SplashScreen]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SportsSeatPlacesScreen]
class SportsSeatPlacesRoute
    extends _i17.PageRouteInfo<SportsSeatPlacesRouteArgs> {
  SportsSeatPlacesRoute({
    required String eventId,
    _i20.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          SportsSeatPlacesRoute.name,
          args: SportsSeatPlacesRouteArgs(
            eventId: eventId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SportsSeatPlacesRoute';

  static const _i17.PageInfo<SportsSeatPlacesRouteArgs> page =
      _i17.PageInfo<SportsSeatPlacesRouteArgs>(name);
}

class SportsSeatPlacesRouteArgs {
  const SportsSeatPlacesRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i20.Key? key;

  @override
  String toString() {
    return 'SportsSeatPlacesRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i15.TicketBookingScreen]
class TicketBookingRoute extends _i17.PageRouteInfo<TicketBookingRouteArgs> {
  TicketBookingRoute({
    required DateTime dateTime,
    required String eventId,
    _i20.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          TicketBookingRoute.name,
          args: TicketBookingRouteArgs(
            dateTime: dateTime,
            eventId: eventId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketBookingRoute';

  static const _i17.PageInfo<TicketBookingRouteArgs> page =
      _i17.PageInfo<TicketBookingRouteArgs>(name);
}

class TicketBookingRouteArgs {
  const TicketBookingRouteArgs({
    required this.dateTime,
    required this.eventId,
    this.key,
  });

  final DateTime dateTime;

  final String eventId;

  final _i20.Key? key;

  @override
  String toString() {
    return 'TicketBookingRouteArgs{dateTime: $dateTime, eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i16.TicketStandingPlacesScreen]
class TicketStandingPlacesRoute
    extends _i17.PageRouteInfo<TicketStandingPlacesRouteArgs> {
  TicketStandingPlacesRoute({
    required String eventId,
    required DateTime dateTime,
    _i20.Key? key,
    List<_i17.PageRouteInfo>? children,
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

  static const _i17.PageInfo<TicketStandingPlacesRouteArgs> page =
      _i17.PageInfo<TicketStandingPlacesRouteArgs>(name);
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
