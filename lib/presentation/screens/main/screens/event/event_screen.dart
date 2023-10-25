import 'package:auto_route/auto_route.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/presentation/screens/main/screens/event/event_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EventScreen extends StatelessWidget {
  final EventDto event;

  const EventScreen({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(event.name ?? ''),
      ),
      extendBodyBehindAppBar: true,
      body: EventView(event: event),
    );
  }
}
