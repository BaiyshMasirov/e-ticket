import 'package:common/common.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/ticket_seat_places_cubit.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/widgets/widgets.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketSeatPlacesView extends StatelessWidget {
  const TicketSeatPlacesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketSeatPlacesCubit, TicketSeatPlacesState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        data: (tickets) => const Center(
          child: SeatPlacesBooking(),
        ),
        error: (errorMessage) => DataFetchFailure(
          error: errorMessage,
          onTryLoadAgain: context.read<TicketSeatPlacesCubit>().getTickets,
        ),
      ),
    );
  }
}
