import 'package:common/common.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/locations/bishkek_arena/models/models.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/data/models/models.dart';
import 'package:collection/collection.dart';

const _minScale = 3.0;

class BishkekArenaPlacesView extends HookWidget {
  final BishkekArenaBlockType blockType;
  final List<TicketDto> tickets;

  const BishkekArenaPlacesView({
    required this.tickets,
    required this.blockType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transformationController = useTransformationController();
    final holdTickets = context.watch<TicketSeatHoldCubit>().state.tickets;

    useEffect(() {
      final zoomFactor = _minScale;
      transformationController.value.setEntry(0, 0, zoomFactor);
      transformationController.value.setEntry(1, 1, zoomFactor);
      transformationController.value.setEntry(2, 2, zoomFactor);
      return null;
    }, const []);

    final List<SeatRowPlaceV2> places;
    final seatGenerator = BishkekArenaSeatPlacesManager();

    /// region switch
    switch (blockType) {
      case BishkekArenaBlockType.B:
        places = seatGenerator.generateBBlock(
          tickets: tickets,
          holdTickets: holdTickets,
        );
      case BishkekArenaBlockType.C:
        places = seatGenerator.generateCBlock(
          tickets: tickets,
          holdTickets: holdTickets,
        );
      case BishkekArenaBlockType.D:
        places = seatGenerator.generateDBlock(
          tickets: tickets,
          holdTickets: holdTickets,
        );
      case BishkekArenaBlockType.E:
        places = seatGenerator.generateEBlock(
          tickets: tickets,
          holdTickets: holdTickets,
        );
      case BishkekArenaBlockType.F:
        places = seatGenerator.generateFBlock(
          tickets: tickets,
          holdTickets: holdTickets,
        );
      case BishkekArenaBlockType.G:
        places = seatGenerator.generateGBlock(
          tickets: tickets,
          holdTickets: holdTickets,
        );
      default:
        places = [];
    }

    /// endregion

    return Container(
      color: context.colorScheme.background,
      child: Column(
        children: [
          Text(
            blockType.name,
            style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: SeatLayoutWidgetV2(
              minScale: _minScale,
              transformationController: transformationController,
              stateModel: SeatLayoutStateModelV2(
                rows: places.length,
                seatSvgSize: 6.w,
                seatPlaceTextPadding: EdgeInsets.all(0.8.w),
                pathDisabledSeat: Assets.svgs.booking.svgDisabledBusSeat.path,
                pathSelectedSeat: Assets.svgs.booking.svgSelectedBusSeats.path,
                pathSoldSeat: Assets.svgs.booking.svgSoldBusSeat.path,
                pathUnSelectedSeat:
                    Assets.svgs.booking.svgUnselectedBusSeat.path,
                currentSeatsState: places,
              ),
              onSeatStateChanged:
                  (currentIndex, placeNumber, currentState, ticketId) {
                if (ticketId == null) currentState;

                if (currentState == PlaceStateV2.unselected) {
                  final ticket = tickets.firstWhereOrNull(
                    (item) => item.id == ticketId,
                  );

                  if (ticket != null) {
                    context
                        .read<TicketSeatHoldCubit>()
                        .addTicket(ticket: ticket);

                    return PlaceStateV2.selected;
                  }
                } else if (currentState == PlaceStateV2.selected) {
                  final ticket = tickets.firstWhereOrNull(
                    (item) => item.id == ticketId,
                  );

                  if (ticket != null) {
                    context
                        .read<TicketSeatHoldCubit>()
                        .removeTicket(ticket: ticket);

                    return PlaceStateV2.unselected;
                  }
                }

                return currentState;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BishkekArenaSeatPlacesManager {
  List<SeatRowPlaceV2> generateBBlock({
    required List<TicketDto> tickets,
    required holdTickets,
  }) {
    return [
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 7,
        mainCurrentRowLabel: 'Ряд 7',
        mainBranchIndex: _bBranchIndex,
        leftOffsetCount: 0,
        emptySpacingIndex: [2, 3, 12, 21, 29, 31, 38, 40, 47],
        halfSpacingIndex: [4, 13, 22, 30, 39, 48],
        rowLength: _BBlockMaxPlaces + 1,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 6,
        mainCurrentRowLabel: 'Ряд 6',
        mainBranchIndex: _bBranchIndex,
        leftOffsetCount: 0,
        emptySpacingIndex: [2, 3, 12, 21, 29, 38, 47, 55],
        halfSpacingIndex: [4, 13, 30, 39],
        rowLength: _BBlockMaxPlaces + 2,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 5,
        mainCurrentRowLabel: 'Ряд 5',
        mainBranchIndex: _bBranchIndex,
        leftOffsetCount: 0,
        emptySpacingIndex: [3, 12, 21, 29, 38, 47],
        halfSpacingIndex: [4, 13, 30, 39],
        rowLength: _BBlockMaxPlaces + 2,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 4,
        mainCurrentRowLabel: 'Ряд 4',
        mainBranchIndex: _bBranchIndex,
        leftOffsetCount: 0,
        emptySpacingIndex: [],
        rowLength: _BBlockMaxPlaces,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 3,
        mainCurrentRowLabel: 'Ряд 3',
        mainBranchIndex: _bBranchIndex,
        leftOffsetCount: 0,
        emptySpacingIndex: [],
        rowLength: _BBlockMaxPlaces,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 2,
        mainCurrentRowLabel: 'Ряд 2',
        mainBranchIndex: _bBranchIndex,
        leftOffsetCount: 0,
        emptySpacingIndex: [],
        rowLength: _BBlockMaxPlaces,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 1,
        mainCurrentRowLabel: 'Ряд 1',
        mainBranchIndex: _bBranchIndex,
        leftOffsetCount: 0,
        emptySpacingIndex: [],
        halfSpacingIndex: [1, 6, 18, 29, 43, 57],
        rowLength: _BBlockMaxPlaces + 3,
      ),
    ];
  }

  List<SeatRowPlaceV2> generateCBlock({
    required List<TicketDto> tickets,
    required holdTickets,
  }) {
    return [
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 7,
        rowLength: _CBlockMaxPlaces - 1,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [14, 15, 22],
        leftOffsetCount: 0,
        halfSpacingIndex: [5],
        mainCurrentRowLabel: 'Ряд 7',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 6,
        rowLength: _CBlockMaxPlaces - 3,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [4, 9],
        leftOffsetCount: 1,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 6',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 5,
        rowLength: _CBlockMaxPlaces - 4,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [4, 9],
        leftOffsetCount: 1,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 5',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 4,
        rowLength: _CBlockMaxPlaces - 4,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [9],
        leftOffsetCount: 1,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 4',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 3,
        rowLength: _CBlockMaxPlaces - 6,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [9],
        leftOffsetCount: 1,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 3',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 2,
        rowLength: _CBlockMaxPlaces - 7,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [9],
        leftOffsetCount: 1,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 2',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 1,
        rowLength: _CBlockMaxPlaces - 7,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [9],
        leftOffsetCount: 1,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 1',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 0,
        rowLength: 13,
        mainBranchIndex: _cBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 13,
        halfSpacingIndex: [1],
        mainCurrentRowLabel: 'Ряд 0',
      ),
    ];
  }

  List<SeatRowPlaceV2> generateDBlock({
    required List<TicketDto> tickets,
    required holdTickets,
  }) {
    return [
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 7,
        rowLength: _DBlockMaxPlaces,
        mainBranchIndex: _dBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 7',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 6,
        rowLength: _DBlockMaxPlaces,
        mainBranchIndex: _dBranchIndex,
        emptySpacingIndex: [1, 2, 3, 35],
        halfSpacingIndex: [36],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 6',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 5,
        rowLength: _DBlockMaxPlaces - 1,
        mainBranchIndex: _dBranchIndex,
        emptySpacingIndex: [1, 2, 3, 4, 35],
        halfSpacingIndex: [34],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 5',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 4,
        rowLength: _DBlockMaxPlaces - 2,
        mainBranchIndex: _dBranchIndex,
        emptySpacingIndex: [1, 2, 3, 4, 5, 33],
        halfSpacingIndex: [34],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 4',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 3,
        rowLength: _DBlockMaxPlaces - 3,
        mainBranchIndex: _dBranchIndex,
        emptySpacingIndex: [1, 2, 3, 4, 5, 6, 33],
        halfSpacingIndex: [32],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 3',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 2,
        rowLength: 25,
        mainBranchIndex: _dBranchIndex,
        emptySpacingIndex: [],
        halfSpacingIndex: [1],
        leftOffsetCount: 6,
        mainCurrentRowLabel: 'Ряд 2',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 1,
        rowLength: 23,
        emptySpacingIndex: [],
        halfSpacingIndex: [1],
        leftOffsetCount: 7,
        mainBranchIndex: _dBranchIndex,
        mainCurrentRowLabel: 'Ряд 1',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 0,
        rowLength: 21,
        mainBranchIndex: _dBranchIndex,
        emptySpacingIndex: [],
        halfSpacingIndex: [1],
        leftOffsetCount: 8,
        mainCurrentRowLabel: 'Ряд 0',
      ),
    ];
  }

  List<SeatRowPlaceV2> generateEBlock({
    required List<TicketDto> tickets,
    required holdTickets,
  }) {
    return [
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 7,
        rowLength: _EBlockMaxPlaces,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 0,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 7',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 6,
        rowLength: _EBlockMaxPlaces - 6,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 3,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 6',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 5,
        rowLength: _EBlockMaxPlaces - 8,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 4,
        halfSpacingIndex: [1],
        mainCurrentRowLabel: 'Ряд 5',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 4,
        rowLength: _EBlockMaxPlaces - 10,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 5,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 4',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 3,
        rowLength: _EBlockMaxPlaces - 12,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 6,
        halfSpacingIndex: [],
        mainCurrentRowLabel: 'Ряд 3',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 2,
        rowLength: _EBlockMaxPlaces - 12,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 6,
        halfSpacingIndex: [1],
        mainCurrentRowLabel: 'Ряд 2',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 1,
        rowLength: _EBlockMaxPlaces - 14,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 7,
        halfSpacingIndex: [1],
        mainCurrentRowLabel: 'Ряд 1',
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 0,
        rowLength: _EBlockMaxPlaces - 16,
        mainBranchIndex: _eBranchIndex,
        emptySpacingIndex: [],
        leftOffsetCount: 8,
        halfSpacingIndex: [1],
        mainCurrentRowLabel: 'Ряд 0',
      ),
    ];
  }

  List<SeatRowPlaceV2> generateFBlock({
    required List<TicketDto> tickets,
    required holdTickets,
  }) {
    return [
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 7,
        rowLength: 28,
        emptySpacingIndex: [],
        halfSpacingIndex: [9, 16],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 7',
        mainBranchIndex: _fBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 6,
        rowLength: 27,
        emptySpacingIndex: [20],
        halfSpacingIndex: [1],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 6',
        mainBranchIndex: _fBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 5,
        rowLength: 27,
        emptySpacingIndex: [19],
        halfSpacingIndex: [],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 5',
        mainBranchIndex: _fBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 4,
        rowLength: 27,
        emptySpacingIndex: [19],
        halfSpacingIndex: [1],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 4',
        mainBranchIndex: _fBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 3,
        rowLength: 25,
        emptySpacingIndex: [17],
        halfSpacingIndex: [],
        leftOffsetCount: 1,
        mainCurrentRowLabel: 'Ряд 3',
        mainBranchIndex: _fBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 2,
        rowLength: 25,
        emptySpacingIndex: [17],
        halfSpacingIndex: [1],
        leftOffsetCount: 1,
        mainCurrentRowLabel: 'Ряд 2',
        mainBranchIndex: _fBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 1,
        rowLength: 24,
        emptySpacingIndex: [15],
        halfSpacingIndex: [],
        leftOffsetCount: 2,
        mainCurrentRowLabel: 'Ряд 1',
        mainBranchIndex: _fBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 0,
        rowLength: 14,
        emptySpacingIndex: [],
        halfSpacingIndex: [],
        leftOffsetCount: 2,
        mainCurrentRowLabel: 'Ряд 0',
        mainBranchIndex: _fBranchIndex,
      ),
    ];
  }

  List<SeatRowPlaceV2> generateGBlock({
    required List<TicketDto> tickets,
    required holdTickets,
  }) {
    return [
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 7,
        rowLength: 57,
        emptySpacingIndex: [27, 35, 45],
        halfSpacingIndex: [9, 18, 36, 54],
        leftOffsetCount: 1,
        mainCurrentRowLabel: 'Ряд 7',
        mainBranchIndex: _gBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 6,
        rowLength: 56,
        emptySpacingIndex: [2, 10, 18, 27, 28, 36, 37, 44, 45, 54, 55],
        halfSpacingIndex: [19, 46],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 6',
        mainBranchIndex: _gBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 5,
        rowLength: 56,
        emptySpacingIndex: [10, 18, 27, 36, 44, 54],
        halfSpacingIndex: [19, 45],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 5',
        mainBranchIndex: _gBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 4,
        rowLength: 55,
        emptySpacingIndex: [],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 4',
        mainBranchIndex: _gBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 3,
        rowLength: 55,
        emptySpacingIndex: [],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 3',
        mainBranchIndex: _gBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 2,
        rowLength: 55,
        emptySpacingIndex: [],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 2',
        mainBranchIndex: _gBranchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        mainCurrentRowIndex: 1,
        rowLength: 55,
        emptySpacingIndex: [],
        leftOffsetCount: 0,
        mainCurrentRowLabel: 'Ряд 1',
        mainBranchIndex: _gBranchIndex,
      ),
    ];
  }
}

const _bBranchIndex = 1;
const _cBranchIndex = 2;
const _dBranchIndex = 3;
const _eBranchIndex = 4;
const _fBranchIndex = 5;
const _gBranchIndex = 6;

const _BBlockMaxPlaces = 54;
const _CBlockMaxPlaces = 32;
const _DBlockMaxPlaces = 47;
const _EBlockMaxPlaces = 42;
