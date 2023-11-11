import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/screens/place_bishkek_arena/models/models.dart';
import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BishkekArenaPlacesView extends HookWidget {
  final BishkekArenaBlockType blockType;

  const BishkekArenaPlacesView({
    required this.blockType,
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

    final List<SeatRowPlace> places;
    final seatGenerator = BishkekArenaSeatPlacesManager();

    switch (blockType) {
      case BishkekArenaBlockType.B:
        places = seatGenerator.generateBBlock();
      case BishkekArenaBlockType.C:
        places = seatGenerator.generateCBlock();
      case BishkekArenaBlockType.D:
        places = seatGenerator.generateDBlock();
      case BishkekArenaBlockType.E:
        places = seatGenerator.generateEBlock();
      case BishkekArenaBlockType.F:
        places = seatGenerator.generateFBlock();
      case BishkekArenaBlockType.G:
        places = seatGenerator.generateGBlock();
    }

    return SeatLayoutWidget(
      transformationController: transformationController,
      stateModel: SeatLayoutStateModel(
        rows: places.length,
        seatSvgSize: 6.w,
        seatPlaceTextPadding: EdgeInsets.all(0.8.w),
        pathDisabledSeat: Assets.svgs.booking.svgDisabledBusSeat.path,
        pathSelectedSeat: Assets.svgs.booking.svgSelectedBusSeats.path,
        pathSoldSeat: Assets.svgs.booking.svgSoldBusSeat.path,
        pathUnSelectedSeat: Assets.svgs.booking.svgUnselectedBusSeat.path,
        currentSeatsState: places,
      ),
      onSeatStateChanged: (rowI, colI, currentState) {
        if (currentState == SeatState.unselected) {
          return SeatState.selected;
        } else if (currentState == SeatState.selected) {
          return SeatState.unselected;
        }

        return currentState;
      },
    );
  }
}

class BishkekArenaSeatPlacesManager {
  List<SeatRowPlace> generateBBlock() {
    return [
      generateSeatPlaces(
        seatRowPlaceText: 'Ряд 7',
        addEmptyLeft: 0,
        addEmptyRight: 2,
        emptyPlaces: [2, 3, 12, 21, 29, 31, 38, 40, 47],
        spacePlace: [4, 13, 22, 30, 39, 48],
        length: _BBlockMaxPlaces + 1,
      ),
      generateSeatPlaces(
        seatRowPlaceText: 'Ряд 6',
        addEmptyLeft: 0,
        addEmptyRight: 0,
        emptyPlaces: [2, 3, 12, 21, 29, 38, 47, 55],
        spacePlace: [4, 13, 30, 39],
        length: _BBlockMaxPlaces + 2,
      ),
      generateSeatPlaces(
        seatRowPlaceText: 'Ряд 5',
        addEmptyLeft: 0,
        addEmptyRight: 0,
        emptyPlaces: [3, 12, 21, 29, 38, 47],
        spacePlace: [4, 13, 30, 39],
        length: _BBlockMaxPlaces + 2,
      ),
      generateSeatPlaces(
        seatRowPlaceText: 'Ряд 4',
        addEmptyLeft: 0,
        addEmptyRight: 0,
        emptyPlaces: [],
        length: _BBlockMaxPlaces,
      ),
      generateSeatPlaces(
        seatRowPlaceText: 'Ряд 3',
        addEmptyLeft: 0,
        addEmptyRight: 0,
        emptyPlaces: [],
        length: _BBlockMaxPlaces,
      ),
      generateSeatPlaces(
        seatRowPlaceText: 'Ряд 2',
        addEmptyLeft: 0,
        addEmptyRight: 0,
        emptyPlaces: [],
        length: _BBlockMaxPlaces,
      ),
      generateSeatPlaces(
        seatRowPlaceText: 'Ряд 1',
        addEmptyLeft: 0,
        addEmptyRight: 0,
        emptyPlaces: [],
        spacePlace: [1, 6, 18, 29, 43, 57],
        length: _BBlockMaxPlaces + 3,
      ),
    ];
  }

  List<SeatRowPlace> generateCBlock() {
    return [
      generateSeatPlaces(
        length: _CBlockMaxPlaces - 1,
        emptyPlaces: [14, 15, 22],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        spacePlace: [5],
        seatRowPlaceText: 'Ряд 7',
      ),
      generateSeatPlaces(
        length: _CBlockMaxPlaces - 3,
        emptyPlaces: [4, 9],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        spacePlace: [],
        seatRowPlaceText: 'Ряд 6',
      ),
      generateSeatPlaces(
        length: _CBlockMaxPlaces - 4,
        emptyPlaces: [4, 9],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        spacePlace: [],
        seatRowPlaceText: 'Ряд 5',
      ),
      generateSeatPlaces(
        length: _CBlockMaxPlaces - 4,
        emptyPlaces: [9],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        spacePlace: [],
        seatRowPlaceText: 'Ряд 4',
      ),
      generateSeatPlaces(
        length: _CBlockMaxPlaces - 6,
        emptyPlaces: [9],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        spacePlace: [],
        seatRowPlaceText: 'Ряд 3',
      ),
      generateSeatPlaces(
        length: _CBlockMaxPlaces - 7,
        emptyPlaces: [9],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        spacePlace: [],
        seatRowPlaceText: 'Ряд 2',
      ),
      generateSeatPlaces(
        length: _CBlockMaxPlaces - 7,
        emptyPlaces: [9],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        spacePlace: [],
        seatRowPlaceText: 'Ряд 1',
      ),
      generateSeatPlaces(
        length: 13,
        emptyPlaces: [],
        addEmptyLeft: 13,
        addEmptyRight: 0,
        spacePlace: [1],
        seatRowPlaceText: 'Ряд 0',
      ),
    ];
  }

  List<SeatRowPlace> generateDBlock() {
    return [
      generateSeatPlaces(
        length: _DBlockMaxPlaces,
        emptyPlaces: [],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 7',
      ),
      generateSeatPlaces(
        length: _DBlockMaxPlaces,
        emptyPlaces: [1, 2, 3, 35],
        spacePlace: [36],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 6',
      ),
      generateSeatPlaces(
        length: _DBlockMaxPlaces - 1,
        emptyPlaces: [1, 2, 3, 4, 35],
        spacePlace: [34],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 5',
      ),
      generateSeatPlaces(
        length: _DBlockMaxPlaces - 2,
        emptyPlaces: [1, 2, 3, 4, 5, 33],
        spacePlace: [34],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 4',
      ),
      generateSeatPlaces(
        length: _DBlockMaxPlaces - 3,
        emptyPlaces: [1, 2, 3, 4, 5, 6, 33],
        spacePlace: [32],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 3',
      ),
      generateSeatPlaces(
        length: 25,
        emptyPlaces: [],
        spacePlace: [1],
        addEmptyLeft: 6,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 2',
      ),
      generateSeatPlaces(
        length: 23,
        emptyPlaces: [],
        spacePlace: [1],
        addEmptyLeft: 7,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 1',
      ),
      generateSeatPlaces(
        length: 21,
        emptyPlaces: [],
        spacePlace: [1],
        addEmptyLeft: 8,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 0',
      ),
    ];
  }

  List<SeatRowPlace> generateEBlock() {
    return [
      generateSeatPlaces(
          length: _EBlockMaxPlaces,
          emptyPlaces: [],
          addEmptyLeft: 0,
          addEmptyRight: 0,
          spacePlace: [],
          seatRowPlaceText: 'Ряд 7'),
      generateSeatPlaces(
          length: _EBlockMaxPlaces - 6,
          emptyPlaces: [],
          addEmptyLeft: 3,
          addEmptyRight: 0,
          spacePlace: [],
          seatRowPlaceText: 'Ряд 6'),
      generateSeatPlaces(
          length: _EBlockMaxPlaces - 8,
          emptyPlaces: [],
          addEmptyLeft: 4,
          addEmptyRight: 0,
          spacePlace: [1],
          seatRowPlaceText: 'Ряд 5'),
      generateSeatPlaces(
          length: _EBlockMaxPlaces - 10,
          emptyPlaces: [],
          addEmptyLeft: 5,
          addEmptyRight: 0,
          spacePlace: [],
          seatRowPlaceText: 'Ряд 4'),
      generateSeatPlaces(
          length: _EBlockMaxPlaces - 12,
          emptyPlaces: [],
          addEmptyLeft: 6,
          addEmptyRight: 0,
          spacePlace: [],
          seatRowPlaceText: 'Ряд 3'),
      generateSeatPlaces(
          length: _EBlockMaxPlaces - 12,
          emptyPlaces: [],
          addEmptyLeft: 6,
          addEmptyRight: 0,
          spacePlace: [1],
          seatRowPlaceText: 'Ряд 2'),
      generateSeatPlaces(
          length: _EBlockMaxPlaces - 14,
          emptyPlaces: [],
          addEmptyLeft: 7,
          addEmptyRight: 0,
          spacePlace: [1],
          seatRowPlaceText: 'Ряд 1'),
      generateSeatPlaces(
          length: _EBlockMaxPlaces - 16,
          emptyPlaces: [],
          addEmptyLeft: 8,
          addEmptyRight: 0,
          spacePlace: [1],
          seatRowPlaceText: 'Ряд 1'),
    ];
  }

  List<SeatRowPlace> generateFBlock() {
    return [
      generateSeatPlaces(
        length: 28,
        emptyPlaces: [],
        spacePlace: [9, 16],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 7',
      ),
      generateSeatPlaces(
        length: 27,
        emptyPlaces: [20],
        spacePlace: [1],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 6',
      ),
      generateSeatPlaces(
        length: 27,
        emptyPlaces: [19],
        spacePlace: [],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 5',
      ),
      generateSeatPlaces(
        length: 27,
        emptyPlaces: [19],
        spacePlace: [1],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 4',
      ),
      generateSeatPlaces(
        length: 25,
        emptyPlaces: [17],
        spacePlace: [],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 3',
      ),
      generateSeatPlaces(
        length: 25,
        emptyPlaces: [17],
        spacePlace: [1],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 2',
      ),
      generateSeatPlaces(
        length: 24,
        emptyPlaces: [15],
        spacePlace: [],
        addEmptyLeft: 2,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 1',
      ),
      generateSeatPlaces(
        length: 14,
        emptyPlaces: [],
        spacePlace: [],
        addEmptyLeft: 2,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 0',
      ),
    ];
  }

  List<SeatRowPlace> generateGBlock() {
    return [
      generateSeatPlaces(
        length: 57,
        emptyPlaces: [27, 35, 45],
        spacePlace: [9, 18, 36, 54],
        addEmptyLeft: 1,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 7',
      ),
      generateSeatPlaces(
        length: 56,
        emptyPlaces: [2, 10, 18, 27, 28, 36, 37, 44, 45, 54, 55],
        spacePlace: [19, 46],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 6',
      ),
      generateSeatPlaces(
        length: 56,
        emptyPlaces: [10, 18, 27, 36, 44, 54],
        spacePlace: [19, 45],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 5',
      ),
      generateSeatPlaces(
        length: 55,
        emptyPlaces: [],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 4',
      ),
      generateSeatPlaces(
        length: 55,
        emptyPlaces: [],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 3',
      ),
      generateSeatPlaces(
        length: 55,
        emptyPlaces: [],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 2',
      ),
      generateSeatPlaces(
        length: 55,
        emptyPlaces: [],
        addEmptyLeft: 0,
        addEmptyRight: 0,
        seatRowPlaceText: 'Ряд 1',
      ),
    ];
  }
}

const _BBlockMaxPlaces = 54;
const _CBlockMaxPlaces = 32;
const _DBlockMaxPlaces = 47;
const _EBlockMaxPlaces = 42;

SeatRowPlace generateSeatPlaces({
  required int length,
  required List<int> emptyPlaces,
  required int addEmptyLeft,
  required int addEmptyRight,
  String? seatRowPlaceText,
  List<int> blockedPlace = const [],
  List<int> spacePlace = const [],
}) {
  int placeNumber = 1;

  final places = List<SeatPlace>.generate(
    length,
    (index) {
      final innerPlace = index + 1;

      if (spacePlace.contains(innerPlace)) {
        return const SeatPlace(
          seatState: SeatState.space,
          seatPlace: -1,
        );
      }

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
    ...places,
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
