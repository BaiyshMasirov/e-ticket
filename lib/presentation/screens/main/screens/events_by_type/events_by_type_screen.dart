import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/presentation/screens/main/screens/events_by_type/bloc/events_by_type_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/events_by_type/events_by_type_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EventsByTypeScreen extends StatelessWidget {
  final KeyValueMapDto eventKeyValue;

  const EventsByTypeScreen({
    required this.eventKeyValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          EventsByTypeCubit.initialize(eventKeyValue)..getNextEventsPage(),
      child: AppScaffold(
        title: eventKeyValue.value,
        body: const EventsByTypeView(),
      ),
    );
  }
}
