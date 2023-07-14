import 'package:e_ti_app/views/screens/profile/profile_screen.dart';
import 'package:e_ti_app/views/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import '../../helper/utils/assets_helper.dart';

class BottomBarItem extends StatefulWidget {
  const BottomBarItem({Key? key}) : super(key: key);

  @override
  State<BottomBarItem> createState() => _BottomBarItemState();
}

class _BottomBarItemState extends State<BottomBarItem> {
  int selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const WelcomeScreen(),
    const Text(
      'Notify',
      style: TextStyle(color: Colors.white),
    ),
    const Text(
      'Ticket',
      style: TextStyle(color: Colors.white),
    ),
    const ProfileScreen()
  ];

  void onItemTapped(int index) {
    // selectedIndex = index;

    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          // unselectedItemColor: Color(0xFF526480),
          elevation: 10,
          showSelectedLabels: false,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: const Image(
                  image: AssetImage(AssetsHelper.homeLogo),
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 3, color: Colors.red))),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Image(
                      image: AssetImage(AssetsHelper.homeLogo),
                    ),
                  ),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: const Image(
                  image: AssetImage(AssetsHelper.notifyLogo),
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 3, color: Colors.red))),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Image(
                      image: AssetImage(AssetsHelper.notifyLogo),
                    ),
                  ),
                ),
                label: 'Notifications'),
            BottomNavigationBarItem(
                icon: const Image(
                  image: AssetImage(AssetsHelper.tiketLogo),
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 3, color: Colors.red))),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Image(
                      image: AssetImage(AssetsHelper.tiketLogo),
                    ),
                  ),
                ),
                label: 'Movie'),
            BottomNavigationBarItem(
                icon: const Image(
                  image: AssetImage(AssetsHelper.userLogo),
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 3, color: Colors.red))),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Image(
                      image: AssetImage(AssetsHelper.userLogo),
                    ),
                  ),
                ),
                label: 'Profile'),
          ]),
      body: Center(child: _widgetOptions[selectedIndex]),
    );
  }
}
