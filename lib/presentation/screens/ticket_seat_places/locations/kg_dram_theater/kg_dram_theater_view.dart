import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/data/models/models.dart';

class KgDramTheaterView extends HookWidget {
  final List<TicketDto> tickets;

  const KgDramTheaterView({
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transformationController = useTransformationController();

    final places = useMemoized(
      () => [
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 22,
          rowLength: _maxPlaces,
          emptySpacingIndex: _rowTop22PlacesNotExist,
          leftOffsetCount: _rowTop22To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 22',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 21,
          rowLength: _maxPlaces,
          emptySpacingIndex: _rowTop21PlacesNotExist,
          leftOffsetCount: _rowTop21To16EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 21',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 20,
          rowLength: _maxPlaces,
          emptySpacingIndex: _rowTop21PlacesNotExist,
          leftOffsetCount: _rowTop21To16EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 20',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 19,
          rowLength: _maxPlaces,
          emptySpacingIndex: _rowTop21PlacesNotExist,
          leftOffsetCount: _rowTop21To16EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 19',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 18,
          rowLength: _maxPlaces,
          emptySpacingIndex: _rowTop21PlacesNotExist,
          leftOffsetCount: _rowTop21To16EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 18',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 17,
          rowLength: _maxPlaces,
          emptySpacingIndex: _rowTop17PlacesNotExist,
          leftOffsetCount: _rowTop21To16EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 17',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 16,
          rowLength: _maxPlaces,
          emptySpacingIndex: _rowTop17PlacesNotExist,
          leftOffsetCount: _rowTop21To16EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 16',
          mainBranchIndex: _branchIndex,
        ),
        //endregion
        //region 15 to 4
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 15,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop17PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 15',
          mainBranchIndex: _branchIndex,
        ), //2
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 14,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop14PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 14',
          mainBranchIndex: _branchIndex,
        ), //2
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 13,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop13PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 13',
          mainBranchIndex: _branchIndex,
        ), //2
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 12,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop12PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 12',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowLabel: '',
          mainCurrentRowIndex: -1,
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 11,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop11PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 11',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 10,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop10PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 10',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 9,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop9PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 9',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 8,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop9PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 8',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 7,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop9PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 7',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 6,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop9PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 6',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 5,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop5PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 5',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 4,
          rowLength: _rowTop15To4PlaceCount,
          emptySpacingIndex: _rowTop4PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 4',
          mainBranchIndex: _branchIndex,
        ),
        // endregion
        //region 3 to 1
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 3,
          rowLength: _rowTop3To1PlaceCount,
          emptySpacingIndex: _rowTop5PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 3',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 2,
          rowLength: _rowTop3To1PlaceCount,
          emptySpacingIndex: _rowTop5PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 2',
          mainBranchIndex: _branchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowIndex: 1,
          rowLength: _rowTop3To1PlaceCount,
          emptySpacingIndex: _rowTop5PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 1',
          mainBranchIndex: _branchIndex,
        ),

        SeatGenerator.generateSeatPlaces(
          tickets: tickets,
          mainCurrentRowLabel: '',
          mainCurrentRowIndex: -1,
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
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

    return SeatLayoutWidgetV2(
      transformationController: transformationController,
      onSeatStateChanged: (rowI, colI, currentState) {
        if (currentState == PlaceStateV2.unselected) {
          return PlaceStateV2.selected;
        } else if (currentState == PlaceStateV2.selected) {
          return PlaceStateV2.unselected;
        }

        return currentState;
      },
      stateModel: SeatLayoutStateModelV2(
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

const _branchIndex = 1;

const _maxPlaces = 40;

const _rowTop22To4EmptyLeftPlaces = 0;
const _rowTop22To16EmptyRightPlaces = 1;

const _rowTop21To16EmptyLeftPlaces = 0;
const _rowTop21To16EmptyRightPlaces = 0;

const _rowTop15To4PlaceCount = 40;
const _rowTop15To4EmptyLeftPlaces = 0;
const _rowTop15To4EmptyRightPlaces = 1;

const _rowTop3To1PlaceCount = 40;
const _rowTop3To1EmptyLeftPlaces = 0;
const _rowTop3To1EmptyRightPlaces = 1;

final _emptyRowPlaces = List.generate(_maxPlaces, (index) => index + 1);

/// [_rowTop25To16PlaceCount]

final _rowTop22PlacesNotExist = [0, 1, 40];
final _rowTop21PlacesNotExist = [0, 1, 2, 39, 40, 20, 21];

final _rowTop17PlacesNotExist = [0, 1, 40, 20, 21];

/// [_rowTop15To4PlaceCount]
final _rowTop14PlacesNotExist = [20, 21];
final _rowTop13PlacesNotExist = [20, 21];
final _rowTop12PlacesNotExist = [20, 21];

final _rowTop11PlacesNotExist = [0, 1, 2, 10, 11, 30, 31, 40, 39];

final _rowTop10PlacesNotExist = [
  ...List.generate(4, (index) => index + 0),
  ...List.generate(2, (index) => index + 10),
  ...List.generate(2, (index) => index + 30),
  ...List.generate(4, (index) => index + 39),
];
final _rowTop9PlacesNotExist = [
  ...List.generate(4, (index) => index + 0),
  ...List.generate(3, (index) => index + 10),
  ...List.generate(3, (index) => index + 29),
  ...List.generate(5, (index) => index + 38),
];

final _rowTop5PlacesNotExist = [
  ...List.generate(5, (index) => index + 0),
  ...List.generate(4, (index) => index + 10),
  ...List.generate(4, (index) => index + 28),
  ...List.generate(5, (index) => index + 37),
];

final _rowTop4PlacesNotExist = _rowTop5PlacesNotExist;
