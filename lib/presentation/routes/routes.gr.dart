// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:eticket/data/data.dart' as _i23;
import 'package:eticket/presentation/screens/auth/login/login_screen.dart'
    as _i10;
import 'package:eticket/presentation/screens/auth/register/register_screen.dart'
    as _i12;
import 'package:eticket/presentation/screens/event/event_screen.dart' as _i5;
import 'package:eticket/presentation/screens/events_by_type/events_by_type_screen.dart'
    as _i6;
import 'package:eticket/presentation/screens/main/main_screen.dart' as _i11;
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart'
    as _i25;
import 'package:eticket/presentation/screens/main/screens/categories/categories_screen.dart'
    as _i4;
import 'package:eticket/presentation/screens/main/screens/history/history_screen/history_screen.dart'
    as _i8;
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/user_tickets_bookings_screen.dart'
    as _i19;
import 'package:eticket/presentation/screens/main/screens/search/search_screen.dart'
    as _i14;
import 'package:eticket/presentation/screens/main/screens/settings/settings_screen.dart'
    as _i15;
import 'package:eticket/presentation/screens/place_ballet_theater/ballet_theater_screen.dart'
    as _i1;
import 'package:eticket/presentation/screens/place_bishkek_arena/bishkek_arena_blocks/bishkek_arena_blocks_screen.dart'
    as _i2;
import 'package:eticket/presentation/screens/place_bishkek_arena/bishkek_arena_places/bishkek_arena_places_screen.dart'
    as _i3;
import 'package:eticket/presentation/screens/place_bishkek_arena/models/models.dart'
    as _i21;
import 'package:eticket/presentation/screens/place_filarmonia/filarmonia_seat_places_screen.dart'
    as _i7;
import 'package:eticket/presentation/screens/place_kyrgyz_dram_theater/kyrgyz_dram_theater_seat_places_screen.dart'
    as _i9;
import 'package:eticket/presentation/screens/place_ru_dram_theater/ru_dram_theater_screen.dart'
    as _i13;
import 'package:eticket/presentation/screens/place_sports/sports_seat_places_screen.dart'
    as _i17;
import 'package:eticket/presentation/screens/splash/splash_screen.dart' as _i16;
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_screen.dart'
    as _i18;
import 'package:flutter/cupertino.dart' as _i24;
import 'package:flutter/material.dart' as _i22;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    BalletTheaterRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BalletTheaterScreen(),
      );
    },
    BishkekArenaBlocksRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BishkekArenaBlocksScreen(),
      );
    },
    BishkekArenaPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<BishkekArenaPlacesRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.BishkekArenaPlacesScreen(
          blockType: args.blockType,
          key: args.key,
        ),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoriesScreen(),
      );
    },
    EventRoute.name: (routeData) {
      final args = routeData.argsAs<EventRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EventScreen(
          event: args.event,
          key: args.key,
        ),
      );
    },
    EventsByTypeRoute.name: (routeData) {
      final args = routeData.argsAs<EventsByTypeRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.EventsByTypeScreen(
          eventKeyValue: args.eventKeyValue,
          key: args.key,
        ),
      );
    },
    FilarmoniaSeatPlacesRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.FilarmoniaSeatPlacesScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HistoryScreen(),
      );
    },
    KyrgyzDramTheaterSeatPlacesRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.KyrgyzDramTheaterSeatPlacesScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.MainScreen(
          initialTab: args.initialTab,
          key: args.key,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RegisterScreen(),
      );
    },
    RuDramTheaterRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RuDramTheaterScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SplashScreen(),
      );
    },
    SportsSeatPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<SportsSeatPlacesRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.SportsSeatPlacesScreen(
          eventId: args.eventId,
          key: args.key,
        ),
      );
    },
    TicketStandingPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketStandingPlacesRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.TicketStandingPlacesScreen(
          eventId: args.eventId,
          dateTime: args.dateTime,
          key: args.key,
        ),
      );
    },
    UserTicketsBookingsRoute.name: (routeData) {
      final args = routeData.argsAs<UserTicketsBookingsRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.UserTicketsBookingsScreen(
          tiketId: args.tiketId,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.BalletTheaterScreen]
class BalletTheaterRoute extends _i20.PageRouteInfo<void> {
  const BalletTheaterRoute({List<_i20.PageRouteInfo>? children})
      : super(
          BalletTheaterRoute.name,
          initialChildren: children,
        );

  static const String name = 'BalletTheaterRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BishkekArenaBlocksScreen]
class BishkekArenaBlocksRoute extends _i20.PageRouteInfo<void> {
  const BishkekArenaBlocksRoute({List<_i20.PageRouteInfo>? children})
      : super(
          BishkekArenaBlocksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BishkekArenaBlocksRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BishkekArenaPlacesScreen]
class BishkekArenaPlacesRoute
    extends _i20.PageRouteInfo<BishkekArenaPlacesRouteArgs> {
  BishkekArenaPlacesRoute({
    required _i21.BishkekArenaBlockType blockType,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          BishkekArenaPlacesRoute.name,
          args: BishkekArenaPlacesRouteArgs(
            blockType: blockType,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BishkekArenaPlacesRoute';

  static const _i20.PageInfo<BishkekArenaPlacesRouteArgs> page =
      _i20.PageInfo<BishkekArenaPlacesRouteArgs>(name);
}

class BishkekArenaPlacesRouteArgs {
  const BishkekArenaPlacesRouteArgs({
    required this.blockType,
    this.key,
  });

  final _i21.BishkekArenaBlockType blockType;

  final _i22.Key? key;

  @override
  String toString() {
    return 'BishkekArenaPlacesRouteArgs{blockType: $blockType, key: $key}';
  }
}

/// generated route for
/// [_i4.CategoriesScreen]
class CategoriesRoute extends _i20.PageRouteInfo<void> {
  const CategoriesRoute({List<_i20.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EventScreen]
class EventRoute extends _i20.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required _i23.EventDto event,
    _i24.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          EventRoute.name,
          args: EventRouteArgs(
            event: event,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const _i20.PageInfo<EventRouteArgs> page =
      _i20.PageInfo<EventRouteArgs>(name);
}

class EventRouteArgs {
  const EventRouteArgs({
    required this.event,
    this.key,
  });

  final _i23.EventDto event;

  final _i24.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i6.EventsByTypeScreen]
class EventsByTypeRoute extends _i20.PageRouteInfo<EventsByTypeRouteArgs> {
  EventsByTypeRoute({
    required _i23.KeyValueMapDto eventKeyValue,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          EventsByTypeRoute.name,
          args: EventsByTypeRouteArgs(
            eventKeyValue: eventKeyValue,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventsByTypeRoute';

  static const _i20.PageInfo<EventsByTypeRouteArgs> page =
      _i20.PageInfo<EventsByTypeRouteArgs>(name);
}

class EventsByTypeRouteArgs {
  const EventsByTypeRouteArgs({
    required this.eventKeyValue,
    this.key,
  });

  final _i23.KeyValueMapDto eventKeyValue;

  final _i22.Key? key;

  @override
  String toString() {
    return 'EventsByTypeRouteArgs{eventKeyValue: $eventKeyValue, key: $key}';
  }
}

/// generated route for
/// [_i7.FilarmoniaSeatPlacesScreen]
class FilarmoniaSeatPlacesRoute extends _i20.PageRouteInfo<void> {
  const FilarmoniaSeatPlacesRoute({List<_i20.PageRouteInfo>? children})
      : super(
          FilarmoniaSeatPlacesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilarmoniaSeatPlacesRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HistoryScreen]
class HistoryRoute extends _i20.PageRouteInfo<void> {
  const HistoryRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.KyrgyzDramTheaterSeatPlacesScreen]
class KyrgyzDramTheaterSeatPlacesRoute extends _i20.PageRouteInfo<void> {
  const KyrgyzDramTheaterSeatPlacesRoute({List<_i20.PageRouteInfo>? children})
      : super(
          KyrgyzDramTheaterSeatPlacesRoute.name,
          initialChildren: children,
        );

  static const String name = 'KyrgyzDramTheaterSeatPlacesRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.LoginScreen]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MainScreen]
class MainRoute extends _i20.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i25.MAIN_SCREEN_TAB initialTab = _i25.MAIN_SCREEN_TAB.HOME,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            initialTab: initialTab,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i20.PageInfo<MainRouteArgs> page =
      _i20.PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.initialTab = _i25.MAIN_SCREEN_TAB.HOME,
    this.key,
  });

  final _i25.MAIN_SCREEN_TAB initialTab;

  final _i22.Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{initialTab: $initialTab, key: $key}';
  }
}

/// generated route for
/// [_i12.RegisterScreen]
class RegisterRoute extends _i20.PageRouteInfo<void> {
  const RegisterRoute({List<_i20.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RuDramTheaterScreen]
class RuDramTheaterRoute extends _i20.PageRouteInfo<void> {
  const RuDramTheaterRoute({List<_i20.PageRouteInfo>? children})
      : super(
          RuDramTheaterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RuDramTheaterRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SearchScreen]
class SearchRoute extends _i20.PageRouteInfo<void> {
  const SearchRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SettingsScreen]
class SettingsRoute extends _i20.PageRouteInfo<void> {
  const SettingsRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SplashScreen]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SportsSeatPlacesScreen]
class SportsSeatPlacesRoute
    extends _i20.PageRouteInfo<SportsSeatPlacesRouteArgs> {
  SportsSeatPlacesRoute({
    required String eventId,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SportsSeatPlacesRoute.name,
          args: SportsSeatPlacesRouteArgs(
            eventId: eventId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SportsSeatPlacesRoute';

  static const _i20.PageInfo<SportsSeatPlacesRouteArgs> page =
      _i20.PageInfo<SportsSeatPlacesRouteArgs>(name);
}

class SportsSeatPlacesRouteArgs {
  const SportsSeatPlacesRouteArgs({
    required this.eventId,
    this.key,
  });

  final String eventId;

  final _i22.Key? key;

  @override
  String toString() {
    return 'SportsSeatPlacesRouteArgs{eventId: $eventId, key: $key}';
  }
}

/// generated route for
/// [_i18.TicketStandingPlacesScreen]
class TicketStandingPlacesRoute
    extends _i20.PageRouteInfo<TicketStandingPlacesRouteArgs> {
  TicketStandingPlacesRoute({
    required String eventId,
    required DateTime dateTime,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
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

  static const _i20.PageInfo<TicketStandingPlacesRouteArgs> page =
      _i20.PageInfo<TicketStandingPlacesRouteArgs>(name);
}

class TicketStandingPlacesRouteArgs {
  const TicketStandingPlacesRouteArgs({
    required this.eventId,
    required this.dateTime,
    this.key,
  });

  final String eventId;

  final DateTime dateTime;

  final _i22.Key? key;

  @override
  String toString() {
    return 'TicketStandingPlacesRouteArgs{eventId: $eventId, dateTime: $dateTime, key: $key}';
  }
}

/// generated route for
/// [_i19.UserTicketsBookingsScreen]
class UserTicketsBookingsRoute
    extends _i20.PageRouteInfo<UserTicketsBookingsRouteArgs> {
  UserTicketsBookingsRoute({
    required String tiketId,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          UserTicketsBookingsRoute.name,
          args: UserTicketsBookingsRouteArgs(
            tiketId: tiketId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UserTicketsBookingsRoute';

  static const _i20.PageInfo<UserTicketsBookingsRouteArgs> page =
      _i20.PageInfo<UserTicketsBookingsRouteArgs>(name);
}

class UserTicketsBookingsRouteArgs {
  const UserTicketsBookingsRouteArgs({
    required this.tiketId,
    this.key,
  });

  final String tiketId;

  final _i22.Key? key;

  @override
  String toString() {
    return 'UserTicketsBookingsRouteArgs{tiketId: $tiketId, key: $key}';
  }
}
