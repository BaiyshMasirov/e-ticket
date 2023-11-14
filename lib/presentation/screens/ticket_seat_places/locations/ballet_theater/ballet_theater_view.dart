import 'package:eticket/data/models/ticket/ticket_dto.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalletTheaterView extends HookWidget {
  final List<TicketDto> tickets;

  const BalletTheaterView({
    required this.tickets, Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transformationController = useTransformationController();

    useEffect(() {
      const zoomFactor = 5.0;
      transformationController.value.setEntry(0, 0, zoomFactor);
      transformationController.value.setEntry(1, 1, zoomFactor);
      transformationController.value.setEntry(2, 2, zoomFactor);
      return null;
    }, const []);

    final places = [
      /// region top places
      _generateSeatPlaces(
        rowLength: 33,
        mainCurrentRowIndex: _top5RowNumber,
        mainCurrentRowLabel: 'Ряд 5',
        emptySpacingIndex: [11, 12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 23],
        halfSpacingIndex: [16, 18],
        textLabelSpacingIndex: [17],
        leftOffsetCount: 10,
        secondarySeatPlaces: [],
      ),
      _generateSeatPlaces(
        rowLength: 35,
        mainCurrentRowIndex: _top4RowNumber,
        mainCurrentRowLabel: 'Ряд 4',
        emptySpacingIndex: [12, 13, 14, 15, 16, 20, 21, 22, 23, 24],
        halfSpacingIndex: [17, 19],
        textLabelSpacingIndex: [18],
        leftOffsetCount: 9,
        secondarySeatPlaces: [],
      ),
      _generateSeatPlaces(
        rowLength: 40,
        beginPlaceNumber: 10,
        mainCurrentRowIndex: _top3RowNumber,
        mainCurrentRowLabel: 'Ряд 3',
        emptySpacingIndex: [2, 14, 15, 16, 17, 18, 22, 23, 24, 25, 26, 37],
        halfSpacingIndex: [19, 21, 38, 40],
        textLabelSpacingIndex: [20],
        leftOffsetCount: 7,
        secondarySeatPlaces: const [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 9,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 39,
            placeNumber: 31,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        beginPlaceNumber: 14,
        mainCurrentRowIndex: _top2RowNumber,
        mainCurrentRowLabel: 'Ряд 2',
        emptySpacingIndex: [3, 13, 14, 15, 16, 26, 27, 28, 37, 38],
        halfSpacingIndex: [20, 22, 39, 42],
        textLabelSpacingIndex: [21],
        leftOffsetCount: 6,
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 8,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 13,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 40,
            placeNumber: 37,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 41,
            placeNumber: 32,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 43,
        mainCurrentRowIndex: _top1RowNumber,
        leftOffsetCount: 6,
        mainCurrentRowLabel: 'Ряд 1',
        beginPlaceNumber: 14,
        emptySpacingIndex: [
          4,
          12,
          13,
          14,
          15,
          16,
          17,
          28,
          29,
          30,
          38,
          39,
          40,
          41
        ],
        blockedPlacesNumber: [24],
        halfSpacingIndex: [22, 24],
        textLabelSpacingIndex: [23],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 7,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 12,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 13,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 42,
            placeNumber: 38,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 43,
            placeNumber: 33,
          ),
        ],
      ),

      /// endregion top places
      // region empty places
      _generateSeatPlaces(
        rowLength: 44,
        mainCurrentRowIndex: -1,
        mainCurrentRowLabel: '',
        halfSpacingIndex: [44],
        emptySpacingIndex: List.generate(38, (index) => index + 4).toList(),
        leftOffsetCount: 5,
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 6,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 11,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 12,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 42,
            placeNumber: 39,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 43,
            placeNumber: 34,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 44,
        mainCurrentRowIndex: -1,
        mainCurrentRowLabel: '',
        halfSpacingIndex: [44],
        emptySpacingIndex: List.generate(38, (index) => index + 4).toList(),
        leftOffsetCount: 5,
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 5,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 10,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 11,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 42,
            placeNumber: 40,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 43,
            placeNumber: 35,
          ),
        ],
      ),
      // endregion empty places
      //region middle places
      _generateSeatPlaces(
        rowLength: 44,
        mainCurrentRowIndex: _middle11RowNumber,
        mainCurrentRowLabel: 'Ряд 11',
        leftOffsetCount: 5,
        emptySpacingIndex: [4, 5, 22, 23, 24, 41, 42],
        halfSpacingIndex: [9, 11, 35, 37],
        textLabelSpacingIndex: [10, 36],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 4,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 9,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 10,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 43,
            placeNumber: 41,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 44,
            placeNumber: 36,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 44,
        mainCurrentRowIndex: _middle10RowNumber,
        mainCurrentRowLabel: 'Ряд 10',
        leftOffsetCount: 5,
        emptySpacingIndex: [4, 5, 22, 23, 24, 41, 42],
        halfSpacingIndex: [9, 11, 35, 37],
        textLabelSpacingIndex: [10, 36],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 3,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 8,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 9,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 43,
            placeNumber: 42,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 44,
            placeNumber: 37,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 47,
        mainCurrentRowIndex: _middle9RowNumber,
        mainCurrentRowLabel: 'Ряд 9',
        leftOffsetCount: 4,
        emptySpacingIndex: [5, 23, 24, 25, 43],
        halfSpacingIndex: [4, 10, 12, 36, 38, 44, 47],
        textLabelSpacingIndex: [11, 37],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 2,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 7,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 8,
          ),
          //
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 45,
            placeNumber: 43,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 46,
            placeNumber: 38,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 46,
        mainCurrentRowIndex: _middle8RowNumber,
        mainCurrentRowLabel: 'Ряд 8',
        leftOffsetCount: 4,
        emptySpacingIndex: [4, 5, 23, 24, 25, 43, 44],
        halfSpacingIndex: [10, 12, 36, 38],
        textLabelSpacingIndex: [11, 37],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 1,
            placeNumber: 1,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 6,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 7,
          ),
          //
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 45,
            placeNumber: 44,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 46,
            placeNumber: 39,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 46,
        mainCurrentRowIndex: _middle7RowNumber,
        mainCurrentRowLabel: 'Ряд 7',
        leftOffsetCount: 4,
        emptySpacingIndex: [1, 4, 5, 23, 24, 25, 43, 44],
        halfSpacingIndex: [10, 12, 36, 38],
        textLabelSpacingIndex: [11, 37],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 2,
            placeNumber: 5,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 3,
            placeNumber: 6,
          ),
          //
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 45,
            placeNumber: 45,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 46,
            placeNumber: 40,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 48,
        mainCurrentRowIndex: _middle6RowNumber,
        mainCurrentRowLabel: 'Ряд 6',
        leftOffsetCount: 3,
        emptySpacingIndex: [3, 23, 24, 44],
        halfSpacingIndex: [4, 10, 12, 36, 38, 45, 48],
        textLabelSpacingIndex: [11, 37],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 1,
            placeNumber: 4,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 2,
            placeNumber: 5,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 46,
            placeNumber: 46,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 47,
            placeNumber: 41,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 47,
        mainCurrentRowIndex: _middle5RowNumber,
        mainCurrentRowLabel: 'Ряд 5',
        leftOffsetCount: 3,
        emptySpacingIndex: [3, 4, 24, 44, 45],
        halfSpacingIndex: [10, 12, 36, 38],
        textLabelSpacingIndex: [11, 37],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 1,
            placeNumber: 3,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 2,
            placeNumber: 4,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 46,
            placeNumber: 47,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 47,
            placeNumber: 42,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 50,
        mainCurrentRowIndex: _middle4RowNumber,
        mainCurrentRowLabel: 'Ряд 4',
        leftOffsetCount: 2,
        emptySpacingIndex: [4, 25, 46],
        halfSpacingIndex: [3, 11, 13, 37, 39, 47, 50],
        textLabelSpacingIndex: [12, 38],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 1,
            placeNumber: 2,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 2,
            placeNumber: 3,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 48,
            placeNumber: 48,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 49,
            placeNumber: 43,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 49,
        mainCurrentRowIndex: _middle3RowNumber,
        mainCurrentRowLabel: 'Ряд 3',
        leftOffsetCount: 2,
        emptySpacingIndex: [3, 4, 24, 25, 26, 46, 47],
        halfSpacingIndex: [11, 13, 37, 39],
        textLabelSpacingIndex: [12, 38],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 1,
            placeNumber: 1,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 2,
            placeNumber: 2,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 48,
            placeNumber: 49,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 3',
            currentRowIndex: _top3RowNumber,
            placeIndex: 49,
            placeNumber: 44,
          ),
        ],
      ),
      _generateSeatPlaces(
        rowLength: 49,
        mainCurrentRowIndex: _middle2RowNumber,
        mainCurrentRowLabel: 'Ряд 2',
        leftOffsetCount: 2,
        emptySpacingIndex: [2, 3, 24, 25, 26, 47, 48],
        halfSpacingIndex: [11, 13, 37, 39],
        textLabelSpacingIndex: [12, 38],
        secondarySeatPlaces: [
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 1',
            currentRowIndex: _top1RowNumber,
            placeIndex: 1,
            placeNumber: 1,
          ),
          SeatPlaceSecondaryV2(
            rowLabel: 'Ряд 2',
            currentRowIndex: _top2RowNumber,
            placeIndex: 49,
            placeNumber: 50,
          ),
        ],
      ),
      _generateSeatPlaces(
          rowLength: 42,
          mainCurrentRowIndex: _middle1RowNumber,
          mainCurrentRowLabel: 'Ряд 1',
          leftOffsetCount: 6,
          emptySpacingIndex: [20, 21, 22, 37],
          halfSpacingIndex: [7, 9, 34, 36],
          textLabelSpacingIndex: [8, 35],
          blockedPlacesNumber: [27]),
      //endregion middle places
      //region empty places
      _generateSeatPlaces(
        rowLength: 1,
        mainCurrentRowIndex: -1,
        mainCurrentRowLabel: '',
        emptySpacingIndex: [1],
      ),
      //endregion empty places
      //region lower places
      _generateSeatPlaces(
        rowLength: 39,
        mainCurrentRowIndex: _lower11RowNumber,
        mainCurrentRowLabel: 'Ряд 11',
        halfSpacingIndex: [19, 21],
        textLabelSpacingIndex: [20],
        leftOffsetCount: 7,
      ),
      _generateSeatPlaces(
        rowLength: 39,
        mainCurrentRowIndex: _lower10RowNumber,
        mainCurrentRowLabel: 'Ряд 10',
        halfSpacingIndex: [19, 21],
        textLabelSpacingIndex: [20],
        leftOffsetCount: 7,
      ),
      _generateSeatPlaces(
        rowLength: 39,
        mainCurrentRowIndex: _lower9RowNumber,
        mainCurrentRowLabel: 'Ряд 9',
        halfSpacingIndex: [19, 21],
        textLabelSpacingIndex: [20],
        leftOffsetCount: 7,
      ),
      _generateSeatPlaces(
        rowLength: 39,
        mainCurrentRowIndex: _lower8RowNumber,
        mainCurrentRowLabel: 'Ряд 8',
        halfSpacingIndex: [19, 21],
        textLabelSpacingIndex: [20],
        leftOffsetCount: 7,
      ),
      _generateSeatPlaces(
        rowLength: 37,
        mainCurrentRowIndex: _lower7RowNumber,
        mainCurrentRowLabel: 'Ряд 7',
        halfSpacingIndex: [18, 20],
        textLabelSpacingIndex: [19],
        leftOffsetCount: 8,
      ),
      _generateSeatPlaces(
        rowLength: 37,
        mainCurrentRowIndex: _lower6RowNumber,
        mainCurrentRowLabel: 'Ряд 6',
        halfSpacingIndex: [18, 20],
        textLabelSpacingIndex: [19],
        leftOffsetCount: 8,
      ),
      _generateSeatPlaces(
        rowLength: 35,
        mainCurrentRowIndex: _lower5RowNumber,
        mainCurrentRowLabel: 'Ряд 5',
        halfSpacingIndex: [17, 19],
        textLabelSpacingIndex: [18],
        leftOffsetCount: 9,
      ),
      _generateSeatPlaces(
        rowLength: 33,
        mainCurrentRowIndex: _lower4RowNumber,
        mainCurrentRowLabel: 'Ряд 4',
        halfSpacingIndex: [16, 18],
        textLabelSpacingIndex: [17],
        leftOffsetCount: 10,
      ),
      _generateSeatPlaces(
        rowLength: 31,
        mainCurrentRowIndex: _lower3RowNumber,
        mainCurrentRowLabel: 'Ряд 3',
        halfSpacingIndex: [15, 17],
        textLabelSpacingIndex: [16],
        leftOffsetCount: 11,
      ),
      _generateSeatPlaces(
        rowLength: 29,
        mainCurrentRowIndex: _lower2RowNumber,
        mainCurrentRowLabel: 'Ряд 2',
        halfSpacingIndex: [14, 16],
        textLabelSpacingIndex: [15],
        leftOffsetCount: 12,
      ),
      _generateSeatPlaces(
        rowLength: 27,
        mainCurrentRowIndex: _lower1RowNumber,
        mainCurrentRowLabel: 'Ряд 1',
        halfSpacingIndex: [13, 15],
        textLabelSpacingIndex: [14],
        leftOffsetCount: 13,
      ),
      //endregion lower places
    ];

    return SeatLayoutWidgetV2(
      transformationController: transformationController,
      stateModel: SeatLayoutStateModelV2(
        rows: places.length,
        currentSeatsState: places,
        pathDisabledSeat: Assets.svgs.booking.svgDisabledBusSeat.path,
        pathSelectedSeat: Assets.svgs.booking.svgSelectedBusSeats.path,
        pathSoldSeat: Assets.svgs.booking.svgSoldBusSeat.path,
        pathUnSelectedSeat: Assets.svgs.booking.svgUnselectedBusSeat.path,
        seatSvgSize: 6.w,
        seatPlaceTextPadding: EdgeInsets.all(0.8.w),
      ),
      onSeatStateChanged: (currentIndex, placeNumber, currentState) {
        if (currentState == PlaceStateV2.unselected) {
          return PlaceStateV2.selected;
        } else if (currentState == PlaceStateV2.selected) {
          return PlaceStateV2.unselected;
        }

        return currentState;
      },
    );
  }
}

const _top5RowNumber = 5;
const _top4RowNumber = 4;
const _top3RowNumber = 3;
const _top2RowNumber = 2;
const _top1RowNumber = 1;

const _middle11RowNumber = 11;
const _middle10RowNumber = 10;
const _middle9RowNumber = 9;
const _middle8RowNumber = 8;
const _middle7RowNumber = 7;
const _middle6RowNumber = 6;
const _middle5RowNumber = 5;
const _middle4RowNumber = 4;
const _middle3RowNumber = 3;
const _middle2RowNumber = 2;
const _middle1RowNumber = 1;

const _lower11RowNumber = 11;
const _lower10RowNumber = 10;
const _lower9RowNumber = 9;
const _lower8RowNumber = 8;
const _lower7RowNumber = 7;
const _lower6RowNumber = 6;
const _lower5RowNumber = 5;
const _lower4RowNumber = 4;
const _lower3RowNumber = 3;
const _lower2RowNumber = 2;
const _lower1RowNumber = 1;

SeatRowPlaceV2 _generateSeatPlaces({
  required int rowLength,
  required int mainCurrentRowIndex,
  required String mainCurrentRowLabel,
  int leftOffsetCount = 0,
  int beginPlaceNumber = 1,
  List<int> blockedPlacesNumber = const [],
  List<int> halfSpacingIndex = const [],
  List<int> emptySpacingIndex = const [],
  List<int> textLabelSpacingIndex = const [],
  List<SeatPlaceSecondaryV2> secondarySeatPlaces = const [],
}) {
  int placeNumber = beginPlaceNumber;

  final places = List<SeatPlaceV2?>.generate(
    rowLength,
    (index) {
      final innerPlace = index + 1;

      if (blockedPlacesNumber.contains(placeNumber)) {
        placeNumber++;
        return null;
      }

      if (textLabelSpacingIndex.contains(innerPlace)) {
        return SeatPlaceV2(
          rowLabel: mainCurrentRowLabel,
          currentRowIndex: mainCurrentRowIndex,
          seatState: PlaceStateV2.text,
          seatPlace: -1,
        );
      }
      if (halfSpacingIndex.contains(innerPlace)) {
        return SeatPlaceV2(
          rowLabel: mainCurrentRowLabel,
          currentRowIndex: mainCurrentRowIndex,
          seatState: PlaceStateV2.emptyHalf,
          seatPlace: -1,
        );
      }

      if (emptySpacingIndex.contains(innerPlace)) {
        return SeatPlaceV2(
          rowLabel: mainCurrentRowLabel,
          currentRowIndex: mainCurrentRowIndex,
          seatState: PlaceStateV2.empty,
          seatPlace: -1,
        );
      }

      final secondaryPlace = secondarySeatPlaces.firstWhereOrNull(
        (place) => place.placeIndex == innerPlace,
      );

      return SeatPlaceV2(
        currentRowIndex: secondaryPlace?.currentRowIndex ?? mainCurrentRowIndex,
        rowLabel: secondaryPlace?.rowLabel ?? mainCurrentRowLabel,
        seatState: PlaceStateV2.unselected,
        seatPlace: secondaryPlace?.placeNumber ?? placeNumber++,
      );
    },
  );

  final seatPlaces = [
    ...List.generate(
      leftOffsetCount,
      (index) => SeatPlaceV2(
        rowLabel: mainCurrentRowLabel,
        currentRowIndex: mainCurrentRowIndex,
        seatState: PlaceStateV2.empty,
        seatPlace: -1,
      ),
    ),
    ...places.nonNulls.toList().reversed.toList(),
  ];

  return SeatRowPlaceV2(
    rowPlaceLabel: mainCurrentRowLabel,
    seatPlaces: seatPlaces,
  );
}
