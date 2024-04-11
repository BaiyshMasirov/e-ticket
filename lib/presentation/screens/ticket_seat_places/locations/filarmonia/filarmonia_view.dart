import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:collection/collection.dart';
import 'package:eticket/data/models/models.dart';

final _minScale = 3.0;

class FilarmoniaView extends HookWidget {
  final List<TicketDto> tickets;

  const FilarmoniaView({
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transformationController = useTransformationController();

    final holdTickets = context.watch<TicketSeatHoldCubit>().state.tickets;

    final places = useMemoized(
      () => [
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          mainCurrentBigText: LocaleKeys.balcony.tr(),
          rowLength: _maxPlaces,
          bigTextSpacingIndex: [27],
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          mainCurrentBigText: '',
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 7,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop7PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 7',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _topBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 6,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop6PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 6',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _topBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 5,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop6PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 5',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _topBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 4,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop6PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 4',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _topBranchIndex,
        ),

        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          mainCurrentBigText: '',
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
        // endregion
        //region 3 to 1
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 3,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop6PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 3',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _topBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 2,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop2PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 2',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _topBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 1,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop1PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 1',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _topBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          mainCurrentBigText: LocaleKeys.parterre.tr(),
          bigTextSpacingIndex: [27],
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          mainCurrentBigText: '',
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),

        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 16,
          rowLength: _rowTop7To4PlaceCount,
          emptySpacingIndex: _rowTop16PlacesNotExist,
          leftOffsetCount: _rowTop21To16EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 16',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        //endregion
        //region 15 to 4
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 15,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 15',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ), //2
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 14,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 14',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ), //2
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 13,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 13',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ), //2
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 12,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 12',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),

        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 11,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 11',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 10,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 10',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 9,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 9',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),

        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 8,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 8',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 7,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 7',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 6,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 6',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 5,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop15PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 5',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 4,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop4PlacesNotExist,
          leftOffsetCount: _rowTop15To4EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 4',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        // endregion
        //region 3 to 1
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 3,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTop3PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 3',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 2,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTopPart2PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 2',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowIndex: 1,
          rowLength: _rowTop16To4PlaceCount,
          emptySpacingIndex: _rowTopPart1PlacesNotExist,
          leftOffsetCount: _rowTop3To1EmptyLeftPlaces,
          mainCurrentRowLabel: 'Ряд 1',
          textLabelSpacingIndex: [1, 57],
          mainBranchIndex: _lowerBranchIndex,
        ),

        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          rowLength: _maxPlaces,
          mainCurrentBigText: LocaleKeys.scene.tr(),
          bigTextSpacingIndex: [27],
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
      ],
    );

    useEffect(() {
      final zoomFactor = _minScale;
      transformationController.value.setEntry(0, 0, zoomFactor);
      transformationController.value.setEntry(1, 1, zoomFactor);
      transformationController.value.setEntry(2, 2, zoomFactor);
      return null;
    }, const []);

    return SeatLayoutWidgetV2(
      minScale: _minScale,
      transformationController: transformationController,
      onSeatStateChanged: (currentIndex, placeNumber, currentState, ticketId) {
        if (ticketId == null) currentState;

        if (currentState == PlaceStateV2.unselected) {
          final ticket = tickets.firstWhereOrNull(
            (item) => item.id == ticketId,
          );

          if (ticket != null) {
            context.read<TicketSeatHoldCubit>().addTicket(ticket: ticket);
            return PlaceStateV2.selected;
          }
        } else if (currentState == PlaceStateV2.selected) {
          final ticket = tickets.firstWhereOrNull(
            (item) => item.id == ticketId,
          );

          if (ticket != null) {
            context.read<TicketSeatHoldCubit>().removeTicket(ticket: ticket);
            return PlaceStateV2.unselected;
          }
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

const _topBranchIndex = 1;
const _lowerBranchIndex = 2;

const _maxPlaces = 55;

const _rowTop7To4PlaceCount = 57;
const _rowTop16To4PlaceCount = 57;

const _rowTop21To16EmptyLeftPlaces = 0;

const _rowTop15To4EmptyLeftPlaces = 0;
const _rowTop15To4EmptyRightPlaces = 1;

const _rowTop3To1EmptyLeftPlaces = 0;
const _rowTop3To1EmptyRightPlaces = 1;
const _rowTop1To1EmptyRightPlaces = 0;

final _emptyRowPlaces = List.generate(_maxPlaces, (index) => index + 1);

/// [_rowTop25To16PlaceCount]

final _rowTop7PlacesNotExist = [
  ...List.generate(3, (index) => index + 1),
  ...List.generate(6, (index) => index + 52),
];
final _rowTop6PlacesNotExist = [
  ...List.generate(4, (index) => index + 1),
  ...List.generate(6, (index) => index + 52),
];

final _rowTop2PlacesNotExist = [
  ...List.generate(5, (index) => index + 1),
  ...List.generate(6, (index) => index + 52),
];
final _rowTop1PlacesNotExist = [
  ...List.generate(6, (index) => index + 1),
  ...List.generate(6, (index) => index + 51),
];

final _rowTop16PlacesNotExist = [0];

final _rowTop15PlacesNotExist = [1, 17, 18, 37, 38, 56];

/// [_rowTop15To4PlaceCount]

final _rowTop4PlacesNotExist = [
  ...List.generate(3, (index) => index + 54),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(3, (index) => index + 1),
  ...List.generate(2, (index) => index + 17),
];
final _rowTop3PlacesNotExist = [
  ...List.generate(4, (index) => index + 53),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(3, (index) => index + 1),
  ...List.generate(2, (index) => index + 17),
];
final _rowTopPart2PlacesNotExist = [
  ...List.generate(4, (index) => index + 53),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(4, (index) => index + 1),
  ...List.generate(2, (index) => index + 17),
];
final _rowTopPart1PlacesNotExist = [
  ...List.generate(5, (index) => index + 52),
  ...List.generate(2, (index) => index + 37),
  ...List.generate(5, (index) => index + 1),
  ...List.generate(2, (index) => index + 17),
];
