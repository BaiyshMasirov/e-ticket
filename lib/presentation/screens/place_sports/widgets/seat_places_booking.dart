import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeatPlacesBooking extends HookWidget {
  const SeatPlacesBooking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transformationController = useTransformationController();

    final places = useMemoized(
      () => [
        //Top rows
        //region 25 to 16
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop25PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 25',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop24PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 24',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop23PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 23',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop22PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 22',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop21PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 21',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop20PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 20',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop19PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 19',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop18PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 18',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop17PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 17',
        ),
        generateSeatPlaces(
          length: _rowTop25To16PlaceCount,
          emptyPlaces: _rowTop16PlacesNotExist,
          addEmptyLeft: _rowTop25To16EmptyPlaces,
          addEmptyRight: _rowTop25To16EmptyPlaces,
          seatRowPlaceText: 'Ряд 16',
        ),
        //endregion
        //region 15 to 4
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 15',
        ), //2
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop14PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 14',
        ), //2
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop13PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 13',
        ), //2
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop12PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 12',
        ),
        generateSeatPlaces(
          length: _maxPlaces,
          emptyPlaces: _emptyRowPlaces,
          addEmptyLeft: 0,
          addEmptyRight: 0,
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop11PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 11',
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop10PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 10',
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop9PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 9',
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop8PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 8',
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop7PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 7',
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop6PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 6',
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop5PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 5',
          blockedPlace: [1],
        ),
        generateSeatPlaces(
          length: _rowTop15To4PlaceCount,
          emptyPlaces: _rowTop4PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 4',
        ),
        // endregion
        //region 3 to 1
        generateSeatPlaces(
          length: _rowTop3To1PlaceCount,
          emptyPlaces: _rowTop3PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop3To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 3',
        ),
        generateSeatPlaces(
          length: _rowTop3To1PlaceCount,
          emptyPlaces: _rowTop2PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop3To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 2',
          blockedPlace: List.generate(8, (index) => index + 30),
        ),
        generateSeatPlaces(
          length: _rowTop3To1PlaceCount,
          emptyPlaces: _rowTop1PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop3To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 1',
        ),
        generateSeatPlaces(
          length: _maxPlaces,
          emptyPlaces: _emptyRowPlaces,
          addEmptyLeft: 0,
          addEmptyRight: 0,
        ),
        // endregion
        // Low rows
        //region 14 to 1
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow14PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 14',
          blockedPlace: List.generate(15, (index) => index + 29),
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow13PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 13',
          blockedPlace: List.generate(15, (index) => index + 29),
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow12PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 12',
          blockedPlace: List.generate(15, (index) => index + 29),
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow11PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 11',
          blockedPlace: [29, 43],
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow10to4PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 10',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow10to4PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 9',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow10to4PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 8',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow10to4PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 7',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow10to4PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 6',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow10to4PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 5',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow10to4PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 4',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow4to1PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 3',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow4to1PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 2',
        ),
        generateSeatPlaces(
          length: _rowLow14To1PlaceCount,
          emptyPlaces: _rowLow4to1PlacesNotExist,
          addEmptyLeft: _rowLow14To1EmptyLeftPlaces,
          addEmptyRight: _rowLow14To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 1',
        ),
        // endregion 14 to 1
      ],
    );

    useEffect(() {
      const zoomFactor = 5.0;
      // const xTranslate = 300.0;
      // const yTranslate = 300.0;
      transformationController.value.setEntry(0, 0, zoomFactor);
      transformationController.value.setEntry(1, 1, zoomFactor);
      transformationController.value.setEntry(2, 2, zoomFactor);
      // transformationController.value.setEntry(0, 3, -xTranslate);
      // transformationController.value.setEntry(1, 3, -yTranslate);
      return null;
    }, const []);

    return SeatLayoutWidget(
      transformationController: transformationController,
      onSeatStateChanged: (rowI, colI, currentState) {
        if (currentState == SeatState.unselected) {
          return SeatState.selected;
        } else if (currentState == SeatState.selected) {
          return SeatState.unselected;
        }

        return currentState;
      },
      stateModel: SeatLayoutStateModel(
        cols: _maxPlaces,
        rows: places.length,
        seatSvgSize: 4.8.w,
        seatPlaceTextPadding: EdgeInsets.all(0.8.w),
        pathDisabledSeat: Assets.svgs.booking.svgDisabledBusSeat.path,
        pathSelectedSeat: Assets.svgs.booking.svgSelectedBusSeats.path,
        pathSoldSeat: Assets.svgs.booking.svgSoldBusSeat.path,
        pathUnSelectedSeat: Assets.svgs.booking.svgUnselectedBusSeat.path,
        currentSeatsState: places,
      ),
    );
  }
}

const _maxPlaces = 73;

const _rowTop25To16PlaceCount = 69;
const _rowTop25To16EmptyPlaces = 2;

const _rowTop15To4PlaceCount = 70;
const _rowTop15To4EmptyLeftPlaces = 2;
const _rowTop15To4EmptyRightPlaces = 1;

const _rowTop3To1PlaceCount = 72;
const _rowTop3To1EmptyLeftPlaces = 0;
const _rowTop3To1EmptyRightPlaces = 1;

const _rowLow14To1PlaceCount = 72;
const _rowLow14To1EmptyLeftPlaces = 0;
const _rowLow14To1EmptyRightPlaces = 1;

final _emptyRowPlaces = List.generate(_maxPlaces, (index) => index + 1);

/// [_rowTop25To16PlaceCount]
final _rowTop25PlacesNotExist = [9, 21, 36, 51, 62];
final _rowTop24PlacesNotExist = [8, 9, 21, 35, 36, 51, 62, 69];
final _rowTop23PlacesNotExist = [8, 9, 21, 36, 51, 62];
final _rowTop22PlacesNotExist = [9, 21, 36, 51, 62];
final _rowTop21PlacesNotExist = [8, 9, 21, 36, 51, 62, 69];
final _rowTop20PlacesNotExist = [8, 9, 21, 36, 51, 62, 69];
final _rowTop19PlacesNotExist = [7, 8, 9, 21, 36, 51, 62, 68, 69];
final _rowTop18PlacesNotExist = [9, 21, 34, 35, 36, 50, 51, 62];
final _rowTop17PlacesNotExist = [9, 21, 35, 36, 51, 62];
final _rowTop16PlacesNotExist = [8, 20, 35, 50, 62];

/// [_rowTop15To4PlaceCount]
final _rowTop15PlacesNotExist = [9, 21, 36, 51, 63];
final _rowTop14PlacesNotExist = _rowTop15PlacesNotExist;
final _rowTop13PlacesNotExist = _rowTop15PlacesNotExist;
final _rowTop12PlacesNotExist = _rowTop15PlacesNotExist;
final _rowTop11PlacesNotExist = [8, 9, 10, 36, 51, 63];
final _rowTop10PlacesNotExist = [
  ...List.generate(3, (index) => index + 8),
  ...List.generate(6, (index) => index + 18),
  ...List.generate(8, (index) => index + 33),
  ...List.generate(5, (index) => index + 50),
  ...List.generate(2, (index) => index + 62),
];
final _rowTop9PlacesNotExist = _rowTop10PlacesNotExist;
final _rowTop8PlacesNotExist = [
  ...List.generate(15, (index) => index + 9),
  ...List.generate(8, (index) => index + 33),
  ...List.generate(14, (index) => index + 50),
];
final _rowTop7PlacesNotExist = [
  ...List.generate(16, (index) => index + 8),
  ...List.generate(8, (index) => index + 33),
  ...List.generate(14, (index) => index + 50),
];
final _rowTop6PlacesNotExist = [
  ...List.generate(_rowTop15To4PlaceCount - 7, (index) => index + 8),
];
final _rowTop5PlacesNotExist = [
  ...List.generate(6, (index) => index + 13),
  ...List.generate(32, (index) => index + 23),
  59,
];
final _rowTop4PlacesNotExist = _rowTop5PlacesNotExist;

/// [_rowTop3To1PlaceCount]
final _rowTop3PlacesNotExist = [
  ...List.generate(4, (index) => index + 15),
  ...List.generate(32, (index) => index + 23),
  59,
];
final _rowTop2PlacesNotExist = [
  ...List.generate(45, (index) => index + 15),
];
final _rowTop1PlacesNotExist = _rowTop3PlacesNotExist;

/// [_rowLow14To1PlaceCount]
final _rowLow14PlacesNotExist = [
  15,
  ...List.generate(14, (index) => index + 29),
  58,
];
final _rowLow13PlacesNotExist = [
  15,
  16,
  ...List.generate(14, (index) => index + 29),
  57,
  58,
  72,
];
final _rowLow12PlacesNotExist = [
  15,
  16,
  ...List.generate(14, (index) => index + 29),
  57,
  58,
  72,
];
final _rowLow11PlacesNotExist = [15, 16, 57, 58, 72];

final _rowLow10to4PlacesNotExist = [15, 29, 43, 58, 59];
final _rowLow4to1PlacesNotExist = [15, 29, 43, 58, 59, 70, 71, 72];

SeatRowPlace generateSeatPlaces({
  required int length,
  required List<int> emptyPlaces,
  required int addEmptyLeft,
  required int addEmptyRight,
  String? seatRowPlaceText,
  List<int> blockedPlace = const [],
}) {
  int placeNumber = 1;

  final places = List<SeatPlace>.generate(
    length,
    (index) {
      final innerPlace = index + 1;

      if (blockedPlace.contains(innerPlace)) {
        return SeatPlace(
          seatState: SeatState.empty,
          seatPlace: placeNumber++,
        );
      }

      if (emptyPlaces.contains(innerPlace)) {
        return const SeatPlace(
          seatState: SeatState.empty,
          seatPlace: -1,
        );
      }

      return SeatPlace(
        seatState: SeatState.unselected,
        seatPlace: placeNumber++,
      );
    },
  );

  final seatPlaces = [
    ...List.generate(
      addEmptyLeft,
      (index) => const SeatPlace(
        seatState: SeatState.empty,
        seatPlace: -1,
      ),
    ),
    ...places.reversed.toList(),
    ...List.generate(
      addEmptyRight,
      (index) => const SeatPlace(
        seatState: SeatState.empty,
        seatPlace: -1,
      ),
    ),
  ];

  return SeatRowPlace(
    rowPlaceLabel: seatRowPlaceText ?? '-',
    seatPlaces: seatPlaces,
  );
}
