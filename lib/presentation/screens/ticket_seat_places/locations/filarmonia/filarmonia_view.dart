import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eticket/data/models/models.dart';

class FilarmoniaView extends HookWidget {
  final List<TicketDto> tickets;

  const FilarmoniaView({
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transformationController = useTransformationController();

    final places = useMemoized(
      () => [
        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
          emptyPlaces: _rowTop7PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 7',
        ),
        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
          emptyPlaces: _rowTop6PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 6',
        ),
        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
          emptyPlaces: _rowTop6PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 5',
        ),
        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
          emptyPlaces: _rowTop6PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 4',
        ),

        generateSeatPlaces(
          length: _maxPlaces,
          emptyPlaces: _emptyRowPlaces,
          addEmptyLeft: 0,
          addEmptyRight: 0,
        ),
        // endregion
        //region 3 to 1
        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
          emptyPlaces: _rowTop6PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop3To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 3',
        ),
        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
          emptyPlaces: _rowTop2PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop3To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 2',
        ),
        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
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

        generateSeatPlaces(
          length: _rowTop7To4PlaceCount,
          emptyPlaces: _rowTop16PlacesNotExist,
          addEmptyLeft: _rowTop21To16EmptyLeftPlaces,
          addEmptyRight: _rowTop21To16EmptyLeftPlaces,
          seatRowPlaceText: 'Ряд 16',
        ),
        //endregion
        //region 15 to 4
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 15',
        ), //2
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 14',
        ), //2
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 13',
        ), //2
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 12',
        ),

        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 11',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 10',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 9',
        ),

        generateSeatPlaces(
          length: _maxPlaces,
          emptyPlaces: _emptyRowPlaces,
          addEmptyLeft: 0,
          addEmptyRight: 0,
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 8',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 7',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 6',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop15PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 5',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop4PlacesNotExist,
          addEmptyLeft: _rowTop15To4EmptyLeftPlaces,
          addEmptyRight: _rowTop15To4EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 4',
        ),
        // endregion
        //region 3 to 1
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTop3PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop3To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 3',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTopPart2PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop3To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 2',
        ),
        generateSeatPlaces(
          length: _rowTop16To4PlaceCount,
          emptyPlaces: _rowTopPart1PlacesNotExist,
          addEmptyLeft: _rowTop3To1EmptyLeftPlaces,
          addEmptyRight: _rowTop1To1EmptyRightPlaces,
          seatRowPlaceText: 'Ряд 1',
        ),

        generateSeatPlaces(
          length: _maxPlaces,
          emptyPlaces: _emptyRowPlaces,
          addEmptyLeft: 0,
          addEmptyRight: 0,
        ),
      ],
    );

    useEffect(() {
      const zoomFactor = 5.0;
      transformationController.value.setEntry(0, 0, zoomFactor);
      transformationController.value.setEntry(1, 1, zoomFactor);
      transformationController.value.setEntry(2, 2, zoomFactor);
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

const _maxPlaces = 55;

const _rowTop7To4PlaceCount = 55;
const _rowTop16To4PlaceCount = 55;

const _rowTop21To16EmptyLeftPlaces = 0;

const _rowTop15To4EmptyLeftPlaces = 0;
const _rowTop15To4EmptyRightPlaces = 1;

const _rowTop3To1EmptyLeftPlaces = 0;
const _rowTop3To1EmptyRightPlaces = 1;
const _rowTop1To1EmptyRightPlaces = 0;

final _emptyRowPlaces = List.generate(_maxPlaces, (index) => index + 1);

/// [_rowTop25To16PlaceCount]

final _rowTop7PlacesNotExist = [
  ...List.generate(2, (index) => index + 1),
  ...List.generate(7, (index) => index + 51),
];
final _rowTop6PlacesNotExist = [
  ...List.generate(3, (index) => index + 1),
  ...List.generate(7, (index) => index + 51),
];

final _rowTop2PlacesNotExist = [
  ...List.generate(4, (index) => index + 1),
  ...List.generate(7, (index) => index + 51),
];
final _rowTop1PlacesNotExist = [
  ...List.generate(5, (index) => index + 1),
  ...List.generate(6, (index) => index + 50),
];

final _rowTop16PlacesNotExist = [0];

final _rowTop15PlacesNotExist = [0, 17, 18, 37, 38, 55];

/// [_rowTop15To4PlaceCount]

final _rowTop4PlacesNotExist = [
  ...List.generate(3, (index) => index + 53),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(3, (index) => index + 0),
  ...List.generate(2, (index) => index + 17),
];
final _rowTop3PlacesNotExist = [
  ...List.generate(4, (index) => index + 52),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(3, (index) => index + 0),
  ...List.generate(2, (index) => index + 17),
];
final _rowTopPart2PlacesNotExist = [
  ...List.generate(4, (index) => index + 52),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(4, (index) => index + 0),
  ...List.generate(2, (index) => index + 17),
];
final _rowTopPart1PlacesNotExist = [
  ...List.generate(5, (index) => index + 51),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(5, (index) => index + 0),
  ...List.generate(2, (index) => index + 17),
];

/// [_rowLow14To1PlaceCount]

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
