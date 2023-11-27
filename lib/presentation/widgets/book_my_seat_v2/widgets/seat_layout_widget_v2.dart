import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';

class SeatLayoutWidgetV2 extends StatelessWidget {
  final TransformationController transformationController;
  final SeatLayoutStateModelV2 stateModel;
  final PlaceStateV2 Function(
    int currentIndex,
    int placeNumber,
    PlaceStateV2 currentState,
    String? ticketId,
  ) onSeatStateChanged;

  const SeatLayoutWidgetV2({
    required this.transformationController,
    required this.stateModel,
    required this.onSeatStateChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      transformationController: transformationController,
      maxScale: 10,
      minScale: 3,
      constrained: false,
      boundaryMargin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List<int>.generate(stateModel.rows, (rowI) => rowI)
            .map(
              (rowI) => Row(
                children: [
                  ...List<int>.generate(
                      stateModel.currentSeatsState[rowI].seatPlaces.length,
                      (colI) => colI).map(
                    (index) {
                      final currentSeatPlace =
                          stateModel.currentSeatsState[rowI].seatPlaces[index];

                      return SeatWidgetV2(
                        model: SeatModelV2(
                          seatPlaceTextPadding: stateModel.seatPlaceTextPadding,
                          seatPlace: currentSeatPlace.seatPlace,
                          currentRowIndex: currentSeatPlace.currentRowIndex,
                          rowLabel: currentSeatPlace.rowLabel,
                          seatState: currentSeatPlace.seatState,
                          ticketId: currentSeatPlace.ticketId,
                          seatSvgSize: stateModel.seatSvgSize,
                          pathSelectedSeat: stateModel.pathSelectedSeat,
                          pathDisabledSeat: stateModel.pathDisabledSeat,
                          pathSoldSeat: stateModel.pathSoldSeat,
                          pathUnSelectedSeat: stateModel.pathUnSelectedSeat,
                        ),
                        onSeatStateChanged: onSeatStateChanged,
                      );
                    },
                  ).toList()
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
