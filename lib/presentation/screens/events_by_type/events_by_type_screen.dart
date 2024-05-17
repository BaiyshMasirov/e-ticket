import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/presentation/screens/events_by_type/bloc/events_by_type_cubit.dart';
import 'package:eticket/presentation/screens/events_by_type/events_by_type_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class EventsByTypeScreen extends StatelessWidget {
  final EventType eventType;

  const EventsByTypeScreen({
    required this.eventType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          EventsByTypeCubit.initialize(eventType)..getNextEventsPage(),
      child: AppScaffold(
        title: eventType.localizedName,
        body: const EventsByTypeView(),
      ),
    );
  }
}
