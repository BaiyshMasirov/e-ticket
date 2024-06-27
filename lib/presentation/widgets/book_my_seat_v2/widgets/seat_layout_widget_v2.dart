import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_widget/zoom_widget.dart' show Zoom;

final key = GlobalKey();

class SeatLayoutWidgetV2 extends HookWidget {
  final SeatLayoutStateModelV2 stateModel;

  final PlaceStateV2 Function(
    int currentIndex,
    int placeNumber,
    PlaceStateV2 currentState,
    String? ticketId,
  ) onSeatStateChanged;

  const SeatLayoutWidgetV2({
    required this.stateModel,
    required this.onSeatStateChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showBlackScreen = useState(true);

    useEffect(
      () {
        Future.delayed(
          const Duration(milliseconds: 200),
          () => showBlackScreen.value = false,
        );

        return null;
      },
      const [],
    );

    return Stack(
      children: [
        Zoom(
          key: key,
          maxScale: 10.0,
          backgroundColor: Colors.transparent,
          canvasColor: Colors.transparent,
          colorScrollBars: context.colorScheme.error,
          scrollWeight: 5.w,
          // maxScale: 10.0,
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List<int>.generate(stateModel.rows, (rowI) => rowI)
                  .map(
                    (rowI) => Row(
                      children: [
                        ...List<int>.generate(
                            stateModel
                                .currentSeatsState[rowI].seatPlaces.length,
                            (colI) => colI).map(
                          (index) {
                            final currentSeatPlace = stateModel
                                .currentSeatsState[rowI].seatPlaces[index];

                            return SeatWidgetV2(
                              key: ValueKey(index.toString() + rowI.toString()),
                              model: SeatModelV2(
                                seatPlaceTextPadding:
                                    stateModel.seatPlaceTextPadding,
                                seatPlace: currentSeatPlace.seatPlace,
                                currentRowIndex:
                                    currentSeatPlace.currentRowIndex,
                                rowLabel: currentSeatPlace.rowLabel,
                                bigText: currentSeatPlace.bigText,
                                seatState: currentSeatPlace.seatState,
                                ticketId: currentSeatPlace.ticketId,
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
            ),
          ),
        ),
        if (showBlackScreen.value)
          Container(
            color: Colors.black,
          ),
      ],
    );
  }
}
