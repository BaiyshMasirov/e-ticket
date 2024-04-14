import 'package:common/common.dart';
import 'package:eticket/common/constants/common_constants.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:collection/collection.dart';
import 'package:eticket/data/models/models.dart';

final _minScale = 3.0;

class RuDramTheaterView extends HookWidget {
  final List<TicketDto> tickets;

  const RuDramTheaterView({
    required this.tickets,
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

    final places = [
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _18RowNumber,
        mainCurrentRowLabel: 'Ряд 18',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _17RowNumber,
        mainCurrentRowLabel: 'Ряд 17',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _16RowNumber,
        mainCurrentRowLabel: 'Ряд 16',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _15RowNumber,
        mainCurrentRowLabel: 'Ряд 15',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _14RowNumber,
        mainCurrentRowLabel: 'Ряд 14',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _13RowNumber,
        mainCurrentRowLabel: 'Ряд 13',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 1,
        mainCurrentRowIndex: _13RowNumber,
        mainCurrentRowLabel: '',
        emptySpacingIndex: [1],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _12RowNumber,
        mainCurrentRowLabel: 'Ряд 12',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _11RowNumber,
        mainCurrentRowLabel: 'Ряд 11',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _10RowNumber,
        mainCurrentRowLabel: 'Ряд 10',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _9RowNumber,
        mainCurrentRowLabel: 'Ряд 9',
        emptySpacingIndex: [21, 22, 41],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _8RowNumber,
        mainCurrentRowLabel: 'Ряд 8',
        emptySpacingIndex: [21, 22],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _7RowNumber,
        mainCurrentRowLabel: 'Ряд 7',
        emptySpacingIndex: [2, 3, 21, 22, 41, 40, 39],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _6RowNumber,
        mainCurrentRowLabel: 'Ряд 6',
        emptySpacingIndex: [2, 3, 21, 22, 41, 40],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 1,
        mainCurrentRowIndex: -1,
        mainCurrentRowLabel: '',
        emptySpacingIndex: [1],
        mainBranchIndex: -1,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _5RowNumber,
        mainCurrentRowLabel: 'Ряд 5',
        emptySpacingIndex: [2, 3, 4, 21, 22, 41, 40, 39],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _4RowNumber,
        mainCurrentRowLabel: 'Ряд 4',
        emptySpacingIndex: [2, 3, 4, 5, 21, 22, 41, 40, 39, 38],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _3RowNumber,
        mainCurrentRowLabel: 'Ряд 3',
        emptySpacingIndex: [2, 3, 4, 5, 21, 22, 41, 40, 39, 38],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _2RowNumber,
        mainCurrentRowLabel: 'Ряд 2',
        emptySpacingIndex: [2, 3, 4, 5, 6, 7, 21, 22, 41, 40, 39, 38, 37, 36],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
      SeatGenerator.generateSeatPlaces(
        holdTickets: holdTickets,
        tickets: tickets,
        rowLength: 42,
        mainCurrentRowIndex: _1RowNumber,
        mainCurrentRowLabel: 'Ряд 1',
        emptySpacingIndex: [2, 3, 4, 5, 6, 7, 21, 22, 41, 40, 39, 38, 37, 36],
        textLabelSpacingIndex: [1, 42],
        mainBranchIndex: _branchIndex,
      ),
    ];

    return SeatLayoutWidgetV2(
      minScale: _minScale,
      transformationController: transformationController,
      stateModel: SeatLayoutStateModelV2(
        rows: places.length,
        currentSeatsState: places,
        pathDisabledSeat: Assets.svgs.booking.svgDisabledBusSeat.path,
        pathSelectedSeat: Assets.svgs.booking.svgSelectedBusSeats.path,
        pathSoldSeat: Assets.svgs.booking.svgSoldBusSeat.path,
        pathUnSelectedSeat: Assets.svgs.booking.svgUnselectedBusSeat.path,
        seatSvgSize: seatSvgSize,
        seatPlaceTextPadding: EdgeInsets.all(0.8.w),
      ),
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
    );
  }
}

const _branchIndex = 1;

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
