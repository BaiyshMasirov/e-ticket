import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HistoryView();
  }
}