import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/main/screens/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventTypes = context
        .read<DictionaryCubit>()
        .state
        .eventTypes
        .where((element) => element.key != 0)
        .toList();

    return HomeView(eventTypes: eventTypes);
  }
}
