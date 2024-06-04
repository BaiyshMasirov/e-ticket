// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:eticket/common/common.dart' as _i26;
import 'package:eticket/data/data.dart' as _i24;
import 'package:eticket/domain/domain.dart' as _i22;
import 'package:eticket/presentation/screens/auth/login/login_screen.dart'
    as _i7;
import 'package:eticket/presentation/screens/auth/register/register_screen.dart'
    as _i14;
import 'package:eticket/presentation/screens/contact_info/contact_info_screen.dart'
    as _i4;
import 'package:eticket/presentation/screens/event/event_screen.dart' as _i5;
import 'package:eticket/presentation/screens/events_by_type/events_by_type_screen.dart'
    as _i6;
import 'package:eticket/presentation/screens/main/main_screen.dart' as _i8;
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart'
    as _i27;
import 'package:eticket/presentation/screens/main/screens/categories/categories_screen.dart'
    as _i3;
import 'package:eticket/presentation/screens/main/screens/history/booking_history/booking_history_screen.dart'
    as _i1;
import 'package:eticket/presentation/screens/main/screens/history/booking_tickets/booking_tickets_screen.dart'
    as _i2;
import 'package:eticket/presentation/screens/main/screens/search/search_screen.dart'
    as _i16;
import 'package:eticket/presentation/screens/main/screens/settings/refresh_password/refresh_password_screen.dart'
    as _i13;
import 'package:eticket/presentation/screens/main/screens/settings/settings_view/settings_screen.dart'
    as _i17;
import 'package:eticket/presentation/screens/payment/pages/payment_web_view/payment_web_view_screen.dart'
    as _i10;
import 'package:eticket/presentation/screens/payment/payment_methods/payment_methods_screen.dart'
    as _i9;
import 'package:eticket/presentation/screens/pin_code/pin_code_create/pin_code_create_screen.dart'
    as _i11;
import 'package:eticket/presentation/screens/pin_code/pin_code_verify/pin_code_verify_screen.dart'
    as _i12;
import 'package:eticket/presentation/screens/scan_ticket/scan_ticket_screen.dart'
    as _i15;
import 'package:eticket/presentation/screens/splash/splash_screen.dart' as _i18;
import 'package:eticket/presentation/screens/ticket_seat_places/ticket_seat_places_screen.dart'
    as _i19;
import 'package:eticket/presentation/screens/ticket_standing_places/ticket_standing_places_screen.dart'
    as _i20;
import 'package:flutter/cupertino.dart' as _i25;
import 'package:flutter/material.dart' as _i23;

abstract class $AppRouter extends _i21.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    BookingHistoryRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BookingHistoryScreen(),
      );
    },
    BookingTicketsRoute.name: (routeData) {
      final args = routeData.argsAs<BookingTicketsRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BookingTicketsScreen(
          booking: args.booking,
          key: args.key,
        ),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoriesScreen(),
      );
    },
    ContactInfoRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ContactInfoScreen(),
      );
    },
    EventRoute.name: (routeData) {
      final args = routeData.argsAs<EventRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EventScreen(
          event: args.event,
          key: args.key,
        ),
      );
    },
    EventsByTypeRoute.name: (routeData) {
      final args = routeData.argsAs<EventsByTypeRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.EventsByTypeScreen(
          eventType: args.eventType,
          key: args.key,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.MainScreen(
          initialTab: args.initialTab,
          key: args.key,
        ),
      );
    },
    PaymentMethodsRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodsRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PaymentMethodsScreen(
          preciseCost: args.preciseCost,
          bookingId: args.bookingId,
          key: args.key,
        ),
      );
    },
    PaymentWebViewRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentWebViewRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.PaymentWebViewScreen(
          bookingId: args.bookingId,
          paymentType: args.paymentType,
          onSuccess: args.onSuccess,
          key: args.key,
        ),
      );
    },
    PinCodeCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeCreateRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.PinCodeCreateScreen(
          onBackPressed: args.onBackPressed,
          navigateOnPinCodeCreate: args.navigateOnPinCodeCreate,
          key: args.key,
        ),
      );
    },
    PinCodeVerifyRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeVerifyRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.PinCodeVerifyScreen(
          onBackPressed: args.onBackPressed,
          navigateOnPinCodeCreate: args.navigateOnPinCodeCreate,
          key: args.key,
        ),
      );
    },
    RefreshPasswordRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RefreshPasswordScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RegisterScreen(),
      );
    },
    ScanTicketRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ScanTicketScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SearchScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SplashScreen(),
      );
    },
    TicketSeatPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketSeatPlacesRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.TicketSeatPlacesScreen(
          locationType: args.locationType,
          event: args.event,
          eventDate: args.eventDate,
          key: args.key,
        ),
      );
    },
    TicketStandingPlacesRoute.name: (routeData) {
      final args = routeData.argsAs<TicketStandingPlacesRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.TicketStandingPlacesScreen(
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
class BookingHistoryRoute extends _i21.PageRouteInfo<void> {
  const BookingHistoryRoute({List<_i21.PageRouteInfo>? children})
      : super(
          BookingHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingHistoryRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BookingTicketsScreen]
class BookingTicketsRoute extends _i21.PageRouteInfo<BookingTicketsRouteArgs> {
  BookingTicketsRoute({
    required _i22.Fresh<_i22.BookingModel> booking,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          BookingTicketsRoute.name,
          args: BookingTicketsRouteArgs(
            booking: booking,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BookingTicketsRoute';

  static const _i21.PageInfo<BookingTicketsRouteArgs> page =
      _i21.PageInfo<BookingTicketsRouteArgs>(name);
}

class BookingTicketsRouteArgs {
  const BookingTicketsRouteArgs({
    required this.booking,
    this.key,
  });

  final _i22.Fresh<_i22.BookingModel> booking;

  final _i23.Key? key;

  @override
  String toString() {
    return 'BookingTicketsRouteArgs{booking: $booking, key: $key}';
  }
}

/// generated route for
/// [_i3.CategoriesScreen]
class CategoriesRoute extends _i21.PageRouteInfo<void> {
  const CategoriesRoute({List<_i21.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ContactInfoScreen]
class ContactInfoRoute extends _i21.PageRouteInfo<void> {
  const ContactInfoRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ContactInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactInfoRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EventScreen]
class EventRoute extends _i21.PageRouteInfo<EventRouteArgs> {
  EventRoute({
    required _i24.EventDto event,
    _i25.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          EventRoute.name,
          args: EventRouteArgs(
            event: event,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const _i21.PageInfo<EventRouteArgs> page =
      _i21.PageInfo<EventRouteArgs>(name);
}

class EventRouteArgs {
  const EventRouteArgs({
    required this.event,
    this.key,
  });

  final _i24.EventDto event;

  final _i25.Key? key;

  @override
  String toString() {
    return 'EventRouteArgs{event: $event, key: $key}';
  }
}

/// generated route for
/// [_i6.EventsByTypeScreen]
class EventsByTypeRoute extends _i21.PageRouteInfo<EventsByTypeRouteArgs> {
  EventsByTypeRoute({
    required _i26.EventType eventType,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          EventsByTypeRoute.name,
          args: EventsByTypeRouteArgs(
            eventType: eventType,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EventsByTypeRoute';

  static const _i21.PageInfo<EventsByTypeRouteArgs> page =
      _i21.PageInfo<EventsByTypeRouteArgs>(name);
}

class EventsByTypeRouteArgs {
  const EventsByTypeRouteArgs({
    required this.eventType,
    this.key,
  });

  final _i26.EventType eventType;

  final _i23.Key? key;

  @override
  String toString() {
    return 'EventsByTypeRouteArgs{eventType: $eventType, key: $key}';
  }
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i21.PageRouteInfo<void> {
  const LoginRoute({List<_i21.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MainScreen]
class MainRoute extends _i21.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i27.MAIN_SCREEN_TAB initialTab = _i27.MAIN_SCREEN_TAB.home,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            initialTab: initialTab,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i21.PageInfo<MainRouteArgs> page =
      _i21.PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.initialTab = _i27.MAIN_SCREEN_TAB.home,
    this.key,
  });

  final _i27.MAIN_SCREEN_TAB initialTab;

  final _i23.Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{initialTab: $initialTab, key: $key}';
  }
}

/// generated route for
/// [_i9.PaymentMethodsScreen]
class PaymentMethodsRoute extends _i21.PageRouteInfo<PaymentMethodsRouteArgs> {
  PaymentMethodsRoute({
    required double preciseCost,
    required String bookingId,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
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

  static const _i21.PageInfo<PaymentMethodsRouteArgs> page =
      _i21.PageInfo<PaymentMethodsRouteArgs>(name);
}

class PaymentMethodsRouteArgs {
  const PaymentMethodsRouteArgs({
    required this.preciseCost,
    required this.bookingId,
    this.key,
  });

  final double preciseCost;

  final String bookingId;

  final _i23.Key? key;

  @override
  String toString() {
    return 'PaymentMethodsRouteArgs{preciseCost: $preciseCost, bookingId: $bookingId, key: $key}';
  }
}

/// generated route for
/// [_i10.PaymentWebViewScreen]
class PaymentWebViewRoute extends _i21.PageRouteInfo<PaymentWebViewRouteArgs> {
  PaymentWebViewRoute({
    required String bookingId,
    required _i26.PaymentType paymentType,
    required dynamic Function() onSuccess,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
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

  static const _i21.PageInfo<PaymentWebViewRouteArgs> page =
      _i21.PageInfo<PaymentWebViewRouteArgs>(name);
}

class PaymentWebViewRouteArgs {
  const PaymentWebViewRouteArgs({
    required this.bookingId,
    required this.paymentType,
    required this.onSuccess,
    this.key,
  });

  final String bookingId;

  final _i26.PaymentType paymentType;

  final dynamic Function() onSuccess;

  final _i23.Key? key;

  @override
  String toString() {
    return 'PaymentWebViewRouteArgs{bookingId: $bookingId, paymentType: $paymentType, onSuccess: $onSuccess, key: $key}';
  }
}

/// generated route for
/// [_i11.PinCodeCreateScreen]
class PinCodeCreateRoute extends _i21.PageRouteInfo<PinCodeCreateRouteArgs> {
  PinCodeCreateRoute({
    required dynamic Function() onBackPressed,
    required dynamic Function() navigateOnPinCodeCreate,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          PinCodeCreateRoute.name,
          args: PinCodeCreateRouteArgs(
            onBackPressed: onBackPressed,
            navigateOnPinCodeCreate: navigateOnPinCodeCreate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeCreateRoute';

  static const _i21.PageInfo<PinCodeCreateRouteArgs> page =
      _i21.PageInfo<PinCodeCreateRouteArgs>(name);
}

class PinCodeCreateRouteArgs {
  const PinCodeCreateRouteArgs({
    required this.onBackPressed,
    required this.navigateOnPinCodeCreate,
    this.key,
  });

  final dynamic Function() onBackPressed;

  final dynamic Function() navigateOnPinCodeCreate;

  final _i23.Key? key;

  @override
  String toString() {
    return 'PinCodeCreateRouteArgs{onBackPressed: $onBackPressed, navigateOnPinCodeCreate: $navigateOnPinCodeCreate, key: $key}';
  }
}

/// generated route for
/// [_i12.PinCodeVerifyScreen]
class PinCodeVerifyRoute extends _i21.PageRouteInfo<PinCodeVerifyRouteArgs> {
  PinCodeVerifyRoute({
    required dynamic Function() onBackPressed,
    required dynamic Function() navigateOnPinCodeCreate,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          PinCodeVerifyRoute.name,
          args: PinCodeVerifyRouteArgs(
            onBackPressed: onBackPressed,
            navigateOnPinCodeCreate: navigateOnPinCodeCreate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeVerifyRoute';

  static const _i21.PageInfo<PinCodeVerifyRouteArgs> page =
      _i21.PageInfo<PinCodeVerifyRouteArgs>(name);
}

class PinCodeVerifyRouteArgs {
  const PinCodeVerifyRouteArgs({
    required this.onBackPressed,
    required this.navigateOnPinCodeCreate,
    this.key,
  });

  final dynamic Function() onBackPressed;

  final dynamic Function() navigateOnPinCodeCreate;

  final _i23.Key? key;

  @override
  String toString() {
    return 'PinCodeVerifyRouteArgs{onBackPressed: $onBackPressed, navigateOnPinCodeCreate: $navigateOnPinCodeCreate, key: $key}';
  }
}

/// generated route for
/// [_i13.RefreshPasswordScreen]
class RefreshPasswordRoute extends _i21.PageRouteInfo<void> {
  const RefreshPasswordRoute({List<_i21.PageRouteInfo>? children})
      : super(
          RefreshPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RefreshPasswordRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RegisterScreen]
class RegisterRoute extends _i21.PageRouteInfo<void> {
  const RegisterRoute({List<_i21.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ScanTicketScreen]
class ScanTicketRoute extends _i21.PageRouteInfo<void> {
  const ScanTicketRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ScanTicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanTicketRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SearchScreen]
class SearchRoute extends _i21.PageRouteInfo<void> {
  const SearchRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SettingsScreen]
class SettingsRoute extends _i21.PageRouteInfo<void> {
  const SettingsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SplashScreen]
class SplashRoute extends _i21.PageRouteInfo<void> {
  const SplashRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TicketSeatPlacesScreen]
class TicketSeatPlacesRoute
    extends _i21.PageRouteInfo<TicketSeatPlacesRouteArgs> {
  TicketSeatPlacesRoute({
    required _i26.LocationType locationType,
    required _i24.EventDto event,
    required DateTime eventDate,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
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

  static const _i21.PageInfo<TicketSeatPlacesRouteArgs> page =
      _i21.PageInfo<TicketSeatPlacesRouteArgs>(name);
}

class TicketSeatPlacesRouteArgs {
  const TicketSeatPlacesRouteArgs({
    required this.locationType,
    required this.event,
    required this.eventDate,
    this.key,
  });

  final _i26.LocationType locationType;

  final _i24.EventDto event;

  final DateTime eventDate;

  final _i23.Key? key;

  @override
  String toString() {
    return 'TicketSeatPlacesRouteArgs{locationType: $locationType, event: $event, eventDate: $eventDate, key: $key}';
  }
}

/// generated route for
/// [_i20.TicketStandingPlacesScreen]
class TicketStandingPlacesRoute
    extends _i21.PageRouteInfo<TicketStandingPlacesRouteArgs> {
  TicketStandingPlacesRoute({
    required String eventId,
    required DateTime dateTime,
    _i23.Key? key,
    List<_i21.PageRouteInfo>? children,
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

  static const _i21.PageInfo<TicketStandingPlacesRouteArgs> page =
      _i21.PageInfo<TicketStandingPlacesRouteArgs>(name);
}

class TicketStandingPlacesRouteArgs {
  const TicketStandingPlacesRouteArgs({
    required this.eventId,
    required this.dateTime,
    this.key,
  });

  final String eventId;

  final DateTime dateTime;

  final _i23.Key? key;

  @override
  String toString() {
    return 'TicketStandingPlacesRouteArgs{eventId: $eventId, dateTime: $dateTime, key: $key}';
  }
}
