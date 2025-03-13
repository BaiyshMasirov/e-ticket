import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/ticket_seat_places_view.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/widgets/ticket_seat_place_purchase_fab.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class TicketSeatPlacesScreen extends StatelessWidget {
  final LocationType locationType;
  final EventDto event;
  final DateTime eventDate;

  const TicketSeatPlacesScreen({
    required this.locationType,
    required this.event,
    required this.eventDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TicketSeatPlacesCubit.initialize(
            eventId: event.id,
            eventDate: eventDate,
          )..getTickets(),
        ),
        BlocProvider(
          create: (context) => TicketSeatHoldCubit.initialize(
            eventDate: eventDate,
            eventId: event.id,
          ),
        ),
      ],
      child: AppScaffold(
        isLoadingFunc: (context) =>
            context.select<TicketSeatPlacesCubit, bool>(
              (value) => value.state is TicketSeatPlacesLoadingState,
            ) ||
            context.select<TicketSeatHoldCubit, bool>(
              (value) => value.state is TicketSeatHoldingState,
            ),
        body: Column(
          children: [
            SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoLeadingButton(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        event.name ?? event.locationName ?? '-',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              DateFormatters.toDateTime(
                eventDate,
                pattern: DateFormatters.dmYHmsDashedTemplate,
              ),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
            Expanded(
              child: TicketSeatPlacesView(
                locationType: locationType,
                event: event,
                eventDate: eventDate,
              ),
            ),
          ],
        ),
        floatingActionButton: const TicketSeatPlacePurchaseFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
