import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/locations.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/maple_leaf/maple_leaf_v.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketSeatPlacesView extends StatelessWidget {
  final LocationType locationType;
  final EventDto event;
  final DateTime eventDate;

  const TicketSeatPlacesView({
    required this.locationType,
    required this.event,
    required this.eventDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<TicketSeatHoldCubit, TicketSeatHoldState>(
      listener: (ctx, s) => s.maybeWhen(
        holdSuccess: (tickets, totalSum, bookingId) => context.replaceRoute(
          PaymentMethodsRoute(bookingId: bookingId, preciseCost: totalSum),
        ),
        orElse: () {},
      ),
      child: BlocBuilder<TicketSeatPlacesCubit, TicketSeatPlacesState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (tickets) {
            final Widget child;

            switch (locationType) {
              case LocationType.unknown:
              case LocationType.spartakStadium:
              case LocationType.nationalTheater:
              case LocationType.noSeating:
                child = const TicketSeatNotImpView();
              case LocationType.balletTheater:
                child = BalletTheaterView(tickets: tickets);
              case LocationType.bishkekArena:
                child = BishkekArenaBlocksView(
                  tickets: tickets,
                  event: event,
                  eventDate: eventDate,
                );
              case LocationType.philarmonic:
                child = FilarmoniaView(tickets: tickets);
              case LocationType.kgDramTheater:
                child = KgDramTheaterView(tickets: tickets);
              case LocationType.ruDramTheater:
                child = RuDramTheaterView(tickets: tickets);
              case LocationType.sportPalace:
                child = SportPalaceView(tickets: tickets);
              case LocationType.mapleLeaf:
                child = MapleLeafV(
                  tickets: tickets,
                  event: event,
                  eventDate: eventDate,
                );
            }

            return Column(
              children: [
                const SeatPlaceInfoV(),
                SizedBox(height: 10.h),
                Visibility(
                  visible: event.seatingType == EventSeatingType.noSeating,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue.withOpacity(0.1),
                        ),
                        onPressed: () {
                          context.navigateTo(TicketStandingPlacesRoute(
                            eventId: event.id,
                            dateTime: eventDate,
                          ));
                        },
                        child: Text(LocaleKeys.standing_places.tr()),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
                Expanded(child: Center(child: child)),
                SizedBox(height: 60.h),
              ],
            );
          },
          error: (errorMessage) => DataFetchFailure(
            error: errorMessage,
            onTryLoadAgain: context.read<TicketSeatPlacesCubit>().getTickets,
          ),
        ),
      ),
    );
  }
}
