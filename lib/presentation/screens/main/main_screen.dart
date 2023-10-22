import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class MainScreen extends HookWidget {
  final MAIN_SCREEN_TAB initialTab;

  const MainScreen({
    this.initialTab = MAIN_SCREEN_TAB.HOME,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTab = useState(initialTab.index);

    return AutoTabsScaffold(
      extendBody: true,
      routes: mainScreenTabs.map((e) => e.generateRoute()).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 2,
              tileMode: TileMode.mirror,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedTab.value,
              onTap: (value) {
                selectedTab.value = value;
                tabsRouter.setActiveIndex(value);
              },
              items: mainScreenTabs
                  .map(
                    (e) => BottomNavigationBarItem(
                      icon: Icon(e.iconData),
                      label: e.label,
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
