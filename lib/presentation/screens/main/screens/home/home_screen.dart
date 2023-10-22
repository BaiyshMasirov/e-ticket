import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/main/screens/home/home_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
