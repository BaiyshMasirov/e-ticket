import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/data/models/models.dart';
import 'package:collection/collection.dart';

class SportPalaceView extends HookWidget {
  final List<TicketDto> tickets;

  const SportPalaceView({
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transformationController = useTransformationController();
    final holdTickets = context.watch<TicketSeatHoldCubit>().state.tickets;

    final places = useMemoized(
      () => [
        //Top rows
        //region 25 to 16
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 25,
          mainCurrentRowLabel: 'Ряд 25',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 38, 39, 54, 55, 66, 67],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 24,
          mainCurrentRowLabel: 'Ряд 24',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [9, 10, 22, 23, 37, 38, 39, 54, 55, 66, 67, 74],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 23,
          mainCurrentRowLabel: 'Ряд 23',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [9, 10, 22, 23, 38, 39, 54, 55, 66, 67],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 22,
          mainCurrentRowLabel: 'Ряд 22',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 38, 39, 54, 55, 66, 67],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 21,
          mainCurrentRowLabel: 'Ряд 21',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [9, 10, 22, 23, 38, 39, 54, 55, 66, 67, 74],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 20,
          mainCurrentRowLabel: 'Ряд 20',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [9, 10, 22, 23, 38, 39, 54, 55, 66, 67, 74],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 19,
          mainCurrentRowLabel: 'Ряд 19',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [8, 9, 10, 22, 23, 38, 39, 54, 55, 66, 67, 73, 74],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 18,
          mainCurrentRowLabel: 'Ряд 18',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 24, 37, 38, 39, 53, 54, 55, 66, 67],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 17,
          mainCurrentRowLabel: 'Ряд 17',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 37, 38, 39, 54, 55, 67],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 16,
          mainCurrentRowLabel: 'Ряд 16',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [9, 10, 22, 23, 38, 39, 54, 55, 67],
        ),
        //endregion
        //region 15 to 4
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 15,
          mainCurrentRowLabel: 'Ряд 15',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 38, 39, 54, 55, 67],
        ), //2
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 14,
          mainCurrentRowLabel: 'Ряд 14',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 38, 39, 54, 55, 67],
        ), //2
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 13,
          mainCurrentRowLabel: 'Ряд 13',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 38, 39, 54, 55, 67],
        ), //2
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 12,
          mainCurrentRowLabel: 'Ряд 12',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [10, 22, 23, 38, 39, 54, 55, 67],
        ),
        SeatGenerator.generateSeatPlaces(
            holdTickets: holdTickets,
            tickets: tickets,
            mainBranchIndex: -1,
            rowLength: _maxPlaces,
            emptySpacingIndex: _emptyRowPlaces,
            leftOffsetCount: 0,
            mainCurrentRowIndex: -1,
            mainCurrentRowLabel: ''),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 11,
          mainCurrentRowLabel: 'Ряд 11',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [9, 10, 11, 37, 38, 53, 54, 55, 67],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 10,
          mainCurrentRowLabel: 'Ряд 10',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [
            9,
            10,
            11,
            ...19.to(25),
            ...34.to(45),
            ...54.to(59),
            66,
            67
          ],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 9,
          mainCurrentRowLabel: 'Ряд 9',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [
            9,
            10,
            11,
            ...19.to(25),
            ...34.to(45),
            ...54.to(59),
            66,
            67
          ],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 8,
          mainCurrentRowLabel: 'Ряд 8',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [
            ...10.to(25),
            ...34.to(45),
            ...54.to(68),
          ],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 7,
          mainCurrentRowLabel: 'Ряд 7',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: [
            ...9.to(25),
            ...34.to(45),
            ...54.to(68),
          ],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 75,
          leftOffsetCount: 3,
          mainCurrentRowIndex: 6,
          mainCurrentRowLabel: 'Ряд 6',
          textLabelSpacingIndex: [1, 75],
          emptySpacingIndex: 9.to(75),
        ),
        //
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 76,
          leftOffsetCount: 2,
          mainCurrentRowIndex: 5,
          mainCurrentRowLabel: 'Ряд 5',
          textLabelSpacingIndex: [1, 76],
          emptySpacingIndex: [
            ...14.to(20),
            ...24.to(59),
            63,
            64,
          ],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 76,
          leftOffsetCount: 2,
          mainCurrentRowIndex: 4,
          mainCurrentRowLabel: 'Ряд 4',
          textLabelSpacingIndex: [1, 76],
          emptySpacingIndex: [
            ...14.to(20),
            ...24.to(59),
            63,
            64,
          ],
        ),
        // endregion
        //region 3 to 1
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 3,
          mainCurrentRowLabel: 'Ряд 3',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [
            ...16.to(20),
            ...24.to(59),
            63,
            64,
          ],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 86,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 2,
          mainCurrentRowLabel: 'Ряд 2',
          textLabelSpacingIndex: [1, 86],
          blockedPlacesNumber: 15.to(23),
          emptySpacingIndex: [
            ...16.to(73),
          ],
          // blockedPlace: List.generate(8, (index) => index + 30),
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _topBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 1,
          mainCurrentRowLabel: 'Ряд 1',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [
            ...16.to(20),
            ...24.to(59),
            63,
            64,
          ],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainCurrentRowLabel: '',
          mainBranchIndex: -1,
          rowLength: _maxPlaces,
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainCurrentRowIndex: -1,
          mainCurrentBigText: LocaleKeys.amphitheater.tr(),
          bigTextSpacingIndex: [34],
        ),
        // endregion
        // Low rows
        //region 14 to 1
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 93,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 14,
          mainCurrentRowLabel: 'Ряд 14',
          emptySpacingIndex: [
            16,
            ...30.to(64),
            78,
          ],
          textLabelSpacingIndex: [1, 93],
          blockedPlacesNumber: 28.to(43),
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 90,
          leftOffsetCount: 1,
          mainCurrentRowIndex: 13,
          mainCurrentRowLabel: 'Ряд 13',
          emptySpacingIndex: [
            16,
            ...30.to(62),
            76,
          ],
          textLabelSpacingIndex: [1, 90],
          blockedPlacesNumber: 28.to(41),
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 90,
          leftOffsetCount: 1,
          mainCurrentRowIndex: 12,
          mainCurrentRowLabel: 'Ряд 12',
          emptySpacingIndex: [
            16,
            ...30.to(62),
            76,
          ],
          textLabelSpacingIndex: [1, 90],
          blockedPlacesNumber: 28.to(41),
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 11,
          mainCurrentRowLabel: 'Ряд 11',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 10,
          mainCurrentRowLabel: 'Ряд 10',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 9,
          mainCurrentRowLabel: 'Ряд 9',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 8,
          mainCurrentRowLabel: 'Ряд 8',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 7,
          mainCurrentRowLabel: 'Ряд 7',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 6,
          mainCurrentRowLabel: 'Ряд 6',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 5,
          mainCurrentRowLabel: 'Ряд 5',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 4,
          mainCurrentRowLabel: 'Ряд 4',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 77],
        ),
        //
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowLabel: 'Ряд 3',
          mainCurrentRowIndex: 3,
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 74, 75, 76, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 2,
          mainCurrentRowLabel: 'Ряд 2',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 74, 75, 76, 77],
        ),
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          tickets: tickets,
          mainBranchIndex: _lowerBranchIndex,
          rowLength: 78,
          leftOffsetCount: 0,
          mainCurrentRowIndex: 1,
          mainCurrentRowLabel: 'Ряд 1',
          textLabelSpacingIndex: [1, 78],
          emptySpacingIndex: [16, 30, 31, 32, 46, 47, 48, 63, 74, 75, 76, 77],
        ),
        // endregion 14 to 1
        SeatGenerator.generateSeatPlaces(
          holdTickets: holdTickets,
          mainCurrentRowLabel: '',
          tickets: tickets,
          mainCurrentRowIndex: -1,
          rowLength: _maxPlaces,
          mainCurrentBigText: LocaleKeys.parterre.tr(),
          bigTextSpacingIndex: [34],
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
          bigTextSpacingIndex: [34],
          emptySpacingIndex: _emptyRowPlaces,
          leftOffsetCount: 0,
          mainBranchIndex: -1,
        ),
      ],
    );

    return SeatLayoutWidgetV2(
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
        seatSvgSize: seatSvgSize,
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

const _maxPlaces = 73;

const _rowTop25To16PlaceCount = 69;
const _rowTop25To16emptySpacingIndex = 2;

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
