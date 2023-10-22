import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum MAIN_SCREEN_TAB {
  HOME,
  SEARCH,
  HISTORY,
  SETTINGS,
}

extension MAIN_SCREEN_TABX on MAIN_SCREEN_TAB {
  int get index {
    switch (this) {
      case MAIN_SCREEN_TAB.HOME:
        return 0;
      case MAIN_SCREEN_TAB.SEARCH:
        return 1;
      case MAIN_SCREEN_TAB.HISTORY:
        return 2;
      case MAIN_SCREEN_TAB.SETTINGS:
        return 3;
    }
  }
}

class _MainScreenTab {
  final IconData iconData;
  final PageRouteInfo Function() generateRoute;
  final MAIN_SCREEN_TAB tab;
  final String label;

  _MainScreenTab({
    required this.iconData,
    required this.generateRoute,
    required this.tab,
    required this.label,
  });
}

final mainScreenTabs = [
  _MainScreenTab(
    iconData: CupertinoIcons.home,
    tab: MAIN_SCREEN_TAB.HOME,
    generateRoute: () => const HomeRoute(),
    label: LocaleKeys.home.tr(),
  ),
  _MainScreenTab(
    iconData: CupertinoIcons.search,
    tab: MAIN_SCREEN_TAB.SEARCH,
    generateRoute: () => const SearchRoute(),
    label: LocaleKeys.search.tr(),
  ),
  _MainScreenTab(
    iconData: CupertinoIcons.clock,
    tab: MAIN_SCREEN_TAB.HISTORY,
    generateRoute: () => const HistoryRoute(),
    label: LocaleKeys.history.tr(),
  ),
  _MainScreenTab(
    iconData: Icons.settings_outlined,
    tab: MAIN_SCREEN_TAB.SETTINGS,
    generateRoute: () => const SettingsRoute(),
    label: LocaleKeys.settings.tr(),
  ),
];
