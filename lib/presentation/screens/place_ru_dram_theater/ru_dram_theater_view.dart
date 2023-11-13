import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:collection/collection.dart';

class RuDramTheaterView extends HookWidget {
  const RuDramTheaterView({
    Key? key,
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
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _18RowNumber,
        mainCurrentRowLabel: 'Ряд 18',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _17RowNumber,
        mainCurrentRowLabel: 'Ряд 17',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _16RowNumber,
        mainCurrentRowLabel: 'Ряд 16',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _15RowNumber,
        mainCurrentRowLabel: 'Ряд 15',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _14RowNumber,
        mainCurrentRowLabel: 'Ряд 14',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _13RowNumber,
        mainCurrentRowLabel: 'Ряд 13',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 1,
        mainCurrentRowIndex: _13RowNumber,
        mainCurrentRowLabel: '',
        emptySpacingIndex: [1],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _12RowNumber,
        mainCurrentRowLabel: 'Ряд 12',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _11RowNumber,
        mainCurrentRowLabel: 'Ряд 11',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _10RowNumber,
        mainCurrentRowLabel: 'Ряд 10',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _9RowNumber,
        mainCurrentRowLabel: 'Ряд 9',
        emptySpacingIndex: [21, 22, 41],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _8RowNumber,
        mainCurrentRowLabel: 'Ряд 8',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _7RowNumber,
        mainCurrentRowLabel: 'Ряд 7',
        emptySpacingIndex: [2, 3, 21, 22, 41, 40, 39],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _6RowNumber,
        mainCurrentRowLabel: 'Ряд 6',
        emptySpacingIndex: [2, 3, 21, 22, 41, 40],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 1,
        mainCurrentRowIndex: _5RowNumber,
        mainCurrentRowLabel: '',
        emptySpacingIndex: [1]
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _5RowNumber,
        mainCurrentRowLabel: 'Ряд 5',
        emptySpacingIndex: [2, 3, 4, 21, 22, 41, 40, 39],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _4RowNumber,
        mainCurrentRowLabel: 'Ряд 4',
        emptySpacingIndex: [2, 3, 4, 5, 21, 22, 41, 40, 39, 38],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _3RowNumber,
        mainCurrentRowLabel: 'Ряд 3',
        emptySpacingIndex: [2, 3, 4, 5, 21, 22, 41, 40, 39, 38],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _2RowNumber,
        mainCurrentRowLabel: 'Ряд 2',
        emptySpacingIndex: [2, 3, 4, 5, 6, 7, 21, 22, 41, 40, 39, 38, 37, 36],
        textLabelSpacingIndex: [1, 42],
      ),
      _generateSeatPlaces(
        rowLength: 42,
        mainCurrentRowIndex: _1RowNumber,
        mainCurrentRowLabel: 'Ряд 1',
        emptySpacingIndex: [2, 3, 4, 5, 6, 7, 21, 22, 41, 40, 39, 38, 37, 36],
        textLabelSpacingIndex: [1, 42],
      ),
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

const _18RowNumber = 18;
const _17RowNumber = 17;
const _16RowNumber = 16;
const _15RowNumber = 15;
const _14RowNumber = 14;
const _13RowNumber = 13;
const _12RowNumber = 12;
const _11RowNumber = 11;
const _10RowNumber = 10;
const _9RowNumber = 9;
const _8RowNumber = 8;
const _7RowNumber = 7;
const _6RowNumber = 6;
const _5RowNumber = 5;
const _4RowNumber = 4;
const _3RowNumber = 3;
const _2RowNumber = 2;
const _1RowNumber = 1;

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
