import 'package:auto_route/annotations.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/ticket_seat_places_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TicketSeatPlacesScreen extends StatelessWidget {
  final LocationType locationType;
  final String eventId;

  const TicketSeatPlacesScreen({
    required this.locationType,
    required this.eventId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TicketSeatPlacesCubit.initialize(
        eventId: eventId,
      )..getTickets(),
      child: AppScaffold(
        title: locationType.name.tr(),
        body: TicketSeatPlacesView(locationType: locationType),
      ),
    );
  }
}
