import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookingTicketScreen extends StatelessWidget {
  final DateTime dateTime;
  final String eventId;

  const BookingTicketScreen({
    required this.dateTime,
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: DateFormatters.datetimeToSlashed(dateTime),
      body: Center(
        child: Text(eventId),
      ),
    );
  }
}
