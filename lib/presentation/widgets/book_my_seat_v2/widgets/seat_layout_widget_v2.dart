import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart' show Zoom;

final key = GlobalKey();

class SeatLayoutWidgetV2 extends StatelessWidget {
  final TransformationController transformationController;
  final SeatLayoutStateModelV2 stateModel;
  final double minScale;

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
    required this.minScale,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return InteractiveViewer(
    //   transformationController: transformationController,
    //   maxScale: 10,
    //   minScale: minScale,
    //   constrained: false,
    //   boundaryMargin: EdgeInsets.all(8.w),
    return Zoom(
      key: key,
      backgroundColor: Colors.transparent,
      canvasColor: Colors.transparent,
      colorScrollBars: context.colorScheme.primary,
      maxScale: 10.0,
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding / 2),
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
                        final currentSeatPlace = stateModel
                            .currentSeatsState[rowI].seatPlaces[index];

                        return SeatWidgetV2(
                          model: SeatModelV2(
                            seatPlaceTextPadding:
                                stateModel.seatPlaceTextPadding,
                            seatPlace: currentSeatPlace.seatPlace,
                            currentRowIndex: currentSeatPlace.currentRowIndex,
                            rowLabel: currentSeatPlace.rowLabel,
                            bigText: currentSeatPlace.bigText,
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
      ),
    );
  }
}
