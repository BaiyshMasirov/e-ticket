import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/main/main_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainView();
  }
}
