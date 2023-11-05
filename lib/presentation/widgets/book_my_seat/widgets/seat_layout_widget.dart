import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeatLayoutWidget extends StatelessWidget {
  final TransformationController transformationController;
  final SeatLayoutStateModel stateModel;
  final SeatState Function(int rowI, int colI, SeatState currentState)
      onSeatStateChanged;

  const SeatLayoutWidget({
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
      boundaryMargin: const EdgeInsets.all(8),
      child: Column(
        children: [
          ...List<int>.generate(stateModel.rows, (rowI) => rowI)
              .map(
                (rowI) => Row(
                  children: [
                    ...List<int>.generate(
                        stateModel.cols + 2, (colI) => colI).map(
                      (index) {
                        if (index == 0 || index > stateModel.cols) {
                          return SeatRowLabel(
                            rowLabel: stateModel
                                .currentSeatsState[rowI].rowPlaceLabel,
                            size: stateModel.seatSvgSize,
                          );
                        }

                        final colI = index - 1;

                        return SeatWidget(
                          model: SeatModel(
                            seatPlaceTextPadding:
                                stateModel.seatPlaceTextPadding,
                            seatPlace: stateModel.currentSeatsState[rowI]
                                .seatPlaces[colI].seatPlace,
                            seatState: stateModel.currentSeatsState[rowI]
                                .seatPlaces[colI].seatState,
                            rowI: rowI,
                            colI: colI,
                            seatSvgSize: stateModel.seatSvgSize,
                            pathSelectedSeat: stateModel.pathSelectedSeat,
                            pathDisabledSeat: stateModel.pathDisabledSeat,
                            pathSoldSeat: stateModel.pathSoldSeat,
                            pathUnSelectedSeat:
                                stateModel.pathUnSelectedSeat,
                          ),
                          onSeatStateChanged: onSeatStateChanged,
                        );
                      },
                    ).toList()
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
