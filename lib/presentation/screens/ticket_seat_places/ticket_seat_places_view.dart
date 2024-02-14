import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/locations.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:eticket/presentation/widgets/widgets.dart';

class TicketSeatPlacesView extends StatelessWidget {
  final LocationType locationType;

  const TicketSeatPlacesView({
    required this.locationType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return BlocBuilder<TicketSeatPlacesCubit, TicketSeatPlacesState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        data: (tickets) {
          final Widget child;
=======
    return BlocListener<TicketSeatHoldCubit, TicketSeatHoldState>(
      listener: (ctx, s) => s.maybeWhen(
        holdSuccess: (tickets, totalSum, bookingId) => context.replaceRoute(
          PaymentMethodsRoute(
              bookingId: bookingId, preciseCost: totalSum, tickets: tickets),
        ),
        orElse: () {},
      ),
      child: BlocBuilder<TicketSeatPlacesCubit, TicketSeatPlacesState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (tickets) {
            final Widget child;
>>>>>>> Stashed changes

          switch (locationType) {
            case LocationType.unknown:
            case LocationType.spartakStadium:
            case LocationType.nationalTheater:
            case LocationType.noSeating:
              child = const TicketSeatNotImpView();
            case LocationType.balletTheater:
              child = BalletTheaterView(tickets: tickets);
            case LocationType.bishkekArena:
              child = BishkekArenaBlocksView(tickets: tickets);
            case LocationType.philarmonic:
              child = FilarmoniaView(tickets: tickets);
            case LocationType.kgDramTheater:
              child = KgDramTheaterView(tickets: tickets);
            case LocationType.ruDramTheater:
              child = RuDramTheaterView(tickets: tickets);
            case LocationType.sportPalace:
              child = SportPalaceView(tickets: tickets);
          }

          return Center(
            child: child,
          );
        },
        error: (errorMessage) => DataFetchFailure(
          error: errorMessage,
          onTryLoadAgain: context.read<TicketSeatPlacesCubit>().getTickets,
        ),
      ),
    );
  }
}
