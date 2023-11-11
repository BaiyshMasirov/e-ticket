import 'package:common/common.dart';
import 'package:eticket/presentation/screens/place_filarmonia/bloc/filarmonia_seat_places_cubit.dart';
import 'package:eticket/presentation/screens/place_filarmonia/widgets/widgets.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FilarmoniaSeatPlacesView extends StatelessWidget {
  const FilarmoniaSeatPlacesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilarmoniaSeatPlacesCubit, FilarmoniaSeatPlacesState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        data: (tickets) => const Center(
          child: SeatPlacesBooking(),
        ),
        error: (errorMessage) => DataFetchFailure(
          error: errorMessage,
          onTryLoadAgain: context.read<FilarmoniaSeatPlacesCubit>().getTickets,
        ),
      ),
    );
  }
}
