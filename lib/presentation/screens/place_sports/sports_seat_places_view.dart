import 'package:common/common.dart';
import 'package:eticket/presentation/screens/place_sports/bloc/sports_seat_places_cubit.dart';
import 'package:eticket/presentation/screens/place_sports/widgets/seat_places_booking.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SportsSeatPlacesView extends StatelessWidget {
  const SportsSeatPlacesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SportsSeatPlacesCubit, SportsSeatPlacesState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        data: (tickets) => const Center(
          child: SeatPlacesBooking(),
        ),
        error: (errorMessage) => DataFetchFailure(
          error: errorMessage,
          onTryLoadAgain: context.read<SportsSeatPlacesCubit>().getTickets,
        ),
      ),
    );
  }
}
