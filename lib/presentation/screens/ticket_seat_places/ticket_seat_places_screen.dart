import 'package:auto_route/annotations.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/ticket_seat_places_view.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/widgets/ticket_seat_place_purchase_fab.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TicketSeatPlacesScreen extends StatelessWidget {
  final LocationType locationType;
  final String eventId;
  final DateTime eventDate;

  const TicketSeatPlacesScreen({
    required this.locationType,
    required this.eventId,
    required this.eventDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TicketSeatPlacesCubit.initialize(
            eventId: eventId,
          )..getTickets(),
        ),
        BlocProvider(
          create: (context) => TicketSeatHoldCubit.initialize(
            eventDate: eventDate,
            eventId: eventId,
          ),
        ),
      ],
      child: AppScaffold(
        title: locationType.name.tr(),
        isLoadingFunc: (context) =>
            context.select<TicketSeatPlacesCubit, bool>(
              (value) => value.state is TicketSeatPlacesLoadingState,
            ) ||
            context.select<TicketSeatHoldCubit, bool>(
              (value) => value.state is TicketSeatHoldingState,
            ),
        body: TicketSeatPlacesView(locationType: locationType),
        floatingActionButton: const TicketSeatPlacePurchaseFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
