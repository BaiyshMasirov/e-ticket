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
      routes: mainScreenTabs.map((e) => e.generateRoute()).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          onDestinationSelected: (value) {
            selectedTab.value = value;
            tabsRouter.setActiveIndex(value);
          },
          selectedIndex: selectedTab.value,
          destinations: mainScreenTabs
              .map((e) => NavigationDestination(
                    icon: Icon(e.iconData),
                    selectedIcon: Icon(e.selectedIconData),
                    label: e.label,
                  ))
              .toList(),
        );
      },
    );
  }
}
