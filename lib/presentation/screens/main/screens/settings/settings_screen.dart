import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/main/screens/settings/settings_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}
