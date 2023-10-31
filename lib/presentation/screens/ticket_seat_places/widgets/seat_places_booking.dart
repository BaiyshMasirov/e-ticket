import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';

class SeatPlacesBooking extends StatelessWidget {
  const SeatPlacesBooking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SeatLayoutWidget(
      onSeatStateChanged: (rowI, colI, currentState) => print(''),
      stateModel: SeatLayoutStateModel(
          cols: 6,
          rows: 3,
          pathDisabledSeat: Assets.svgs.booking.svgDisabledBusSeat.path,
          pathSelectedSeat: Assets.svgs.booking.svgSelectedBusSeats.path,
          pathSoldSeat: Assets.svgs.booking.svgSoldBusSeat.path,
          pathUnSelectedSeat: Assets.svgs.booking.svgUnselectedBusSeat.path,
          currentSeatsState: [
            [
              SeatState.disabled,
              SeatState.sold,
              SeatState.selected,
              SeatState.empty,
              SeatState.unselected,
              SeatState.unselected,
            ],
            [
              SeatState.empty,
              SeatState.sold,
              SeatState.selected,
              SeatState.empty,
              SeatState.unselected,
              SeatState.unselected,
            ],
            [
              SeatState.selected,
              SeatState.sold,
              SeatState.selected,
              SeatState.empty,
              SeatState.unselected,
              SeatState.sold,
            ],
          ]),
    );
  }
}
