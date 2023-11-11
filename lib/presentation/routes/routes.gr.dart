// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:eticket/data/data.dart' as _i18;
import 'package:eticket/presentation/screens/auth/login/login_screen.dart'
    as _i8;
import 'package:eticket/presentation/screens/auth/register/register_screen.dart'
    as _i10;
import 'package:eticket/presentation/screens/event/event_screen.dart' as _i4;
import 'package:eticket/presentation/screens/events_by_type/events_by_type_screen.dart'
    as _i5;
import 'package:eticket/presentation/screens/main/main_screen.dart' as _i9;
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart'
    as _i20;
import 'package:eticket/presentation/screens/main/screens/categories/categories_screen.dart'
    as _i3;
import 'package:eticket/presentation/screens/main/screens/history/history_screen.dart'
    as _i7;
import 'package:eticket/presentation/screens/main/screens/search/search_screen.dart'
    as _i11;
import 'package:eticket/presentation/screens/main/screens/settings/settings_screen.dart'
    as _i12;
import 'package:eticket/presentation/screens/place_bishkek_arena/bishkek_arena_blocks/bishkek_arena_blocks_screen.dart'
    as _i1;
import 'package:eticket/presentation/screens/place_bishkek_arena/bishkek_arena_places/bishkek_arena_places_screen.dart'
    as _i2;
import 'package:eticket/presentation/screens/place_bishkek_arena/models/models.dart'
    as _i16;
import 'package:eticket/presentation/screens/place_filarmonia/filarmonia_seat_places_screen.dart'
    as _i6;
import 'package:eticket/presentation/screens/splash/splash_screen.dart' as _i13;
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_screen.dart'
    as _i14;
import 'package:flutter/cupertino.dart' as _i19;
import 'package:flutter/material.dart' as _i17;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    BishkekArenaBlocksRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BishkekArenaBlocksScreen(),
      );
    },
    BishkekArenaPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<BishkekArenaPlacesRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BishkekArenaPlacesScreen(
          blockType: args.blockType,
          key: args.key,
        ),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoriesScreen(),
      );
    },
    EventRoute.name: (routeData) {
      final args = routeData.argsAs<EventRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EventScreen(
          event: args.event,
          key: args.key,
        ),
      );
    },
    EventsByTypeRoute.name: (routeData) {
      final args = routeData.argsAs<EventsByTypeRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EventsByTypeScreen(
          eventKeyValue: args.eventKeyValue,
          key: args.key,
        ),
      );
    },
    FilarmoniaSeatPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<FilarmoniaSeatPlacesRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.FilarmoniaSeatPlacesScreen(
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HistoryScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MainScreen(
          initialTab: args.initialTab,
          key: args.key,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RegisterScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SplashScreen(),
      );
    },
    TicketStandingPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketStandingPlacesRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.TicketStandingPlacesScreen(
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
class BishkekArenaBlocksRoute extends _i15.PageRouteInfo<void> {
  const BishkekArenaBlocksRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BishkekArenaBlocksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BishkekArenaBlocksRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BishkekArenaPlacesScreen]
class BishkekArenaPlacesRoute
    extends _i15.PageRouteInfo<BishkekArenaPlacesRouteArgs> {
  BishkekArenaPlacesRoute({
    required _i16.BishkekArenaBlockType blockType,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          BishkekArenaPlacesRoute.name,
          args: BishkekArenaPlacesRouteArgs(
            blockType: blockType,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BishkekArenaPlacesRoute';

  static const _i15.PageInfo<BishkekArenaPlacesRouteArgs> page =
      _i15.PageInfo<BishkekArenaPlacesRouteArgs>(name);
}

class BishkekArenaPlacesRouteArgs {
  const BishkekArenaPlacesRouteArgs({
    required this.blockType,
    this.key,
  });

  final _i16.BishkekArenaBlockType blockType;

  final _i17.Key? key;

  @override
  String toString() {
    return 'BishkekArenaPlacesRouteArgs{blockType: $blockType, key: $key}';
  }
}

/// generated route for
/// [_i3.CategoriesScreen]
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
/// [_i4.EventScreen]
class EventRoute extends _i15.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required _i18.EventDto event,
    _i19.Key? key,
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

  final _i18.EventDto event;

  final _i19.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i5.EventsByTypeScreen]
class EventsByTypeRoute extends _i15.PageRouteInfo<EventsByTypeRouteArgs> {
  EventsByTypeRoute({
    required _i18.KeyValueMapDto eventKeyValue,
    _i17.Key? key,
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

  final _i18.KeyValueMapDto eventKeyValue;

  final _i17.Key? key;

  @override
  String toString() {
    return 'EventsByTypeRouteArgs{eventKeyValue: $eventKeyValue, key: $key}';
  }
}

/// generated route for
/// [_i6.FilarmoniaSeatPlacesScreen]
class FilarmoniaSeatPlacesRoute
    extends _i15.PageRouteInfo<FilarmoniaSeatPlacesRouteArgs> {
  FilarmoniaSeatPlacesRoute({
    required String eventId,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          FilarmoniaSeatPlacesRoute.name,
          args: FilarmoniaSeatPlacesRouteArgs(
            eventId: eventId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FilarmoniaSeatPlacesRoute';

  static const _i15.PageInfo<FilarmoniaSeatPlacesRouteArgs> page =
      _i15.PageInfo<FilarmoniaSeatPlacesRouteArgs>(name);
}

class FilarmoniaSeatPlacesRouteArgs {
  const FilarmoniaSeatPlacesRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i17.Key? key;

  @override
  String toString() {
    return 'FilarmoniaSeatPlacesRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i7.HistoryScreen]
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
/// [_i8.LoginScreen]
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
/// [_i9.MainScreen]
class MainRoute extends _i15.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i20.MAIN_SCREEN_TAB initialTab = _i20.MAIN_SCREEN_TAB.HOME,
    _i17.Key? key,
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
    this.initialTab = _i20.MAIN_SCREEN_TAB.HOME,
    this.key,
  });

  final _i20.MAIN_SCREEN_TAB initialTab;

  final _i17.Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{initialTab: $initialTab, key: $key}';
  }
}

/// generated route for
/// [_i10.RegisterScreen]
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
/// [_i11.SearchScreen]
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
/// [_i12.SettingsScreen]
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
/// [_i13.SplashScreen]
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
/// [_i14.TicketStandingPlacesScreen]
class TicketStandingPlacesRoute
    extends _i15.PageRouteInfo<TicketStandingPlacesRouteArgs> {
  TicketStandingPlacesRoute({
    required String eventId,
    required DateTime dateTime,
    _i17.Key? key,
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

  final _i17.Key? key;

  @override
  String toString() {
    return 'TicketStandingPlacesRouteArgs{eventId: $eventId, dateTime: $dateTime, key: $key}';
  }
}
