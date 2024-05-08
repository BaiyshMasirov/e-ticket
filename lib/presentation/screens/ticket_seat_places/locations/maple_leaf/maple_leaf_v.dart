import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/models/event/event_dto.dart';
import 'package:eticket/data/models/ticket/ticket_dto.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/common/common.dart';

class MapleLeafV extends HookWidget {
  final List<TicketDto> tickets;
  final EventDto event;
  final DateTime eventDate;

  const MapleLeafV({
    required this.tickets,
    required this.event,
    required this.eventDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final holdTickets = context.watch<TicketSeatHoldCubit>().state.tickets;

    final List<SeatRowPlaceV2> places = [
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 15,
        mainCurrentRowLabel: 'Ряд ${15}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 14,
        mainCurrentRowLabel: 'Ряд ${14}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 13,
        mainCurrentRowLabel: 'Ряд ${13}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 12,
        mainCurrentRowLabel: 'Ряд ${12}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 11,
        mainCurrentRowLabel: 'Ряд ${11}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 10,
        mainCurrentRowLabel: 'Ряд ${10}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 9,
        mainCurrentRowLabel: 'Ряд ${9}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 8,
        mainCurrentRowLabel: 'Ряд ${8}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 7,
        mainCurrentRowLabel: 'Ряд ${7}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 6,
        mainCurrentRowLabel: 'Ряд ${6}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 5,
        mainCurrentRowLabel: 'Ряд ${5}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 4,
        mainCurrentRowLabel: 'Ряд ${4}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 3,
        mainCurrentRowLabel: 'Ряд ${3}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 2,
        mainCurrentRowLabel: 'Ряд ${2}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: 1,
        mainCurrentRowLabel: 'Ряд ${1}',
        mainBranchIndex: _branchIndex,
        textLabelSpacingIndex: [1, _maxPlaces],
        emptySpacingIndex: _emptySpaces,
        tickets: tickets,
        holdTickets: holdTickets,
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: 1,
        mainCurrentRowIndex: -1,
        mainCurrentRowLabel: '',
        mainBranchIndex: -1,
        emptySpacingIndex: [1],
        tickets: [],
        holdTickets: [],
      ),
      SeatGenerator.generateSeatPlaces(
        revert: true,
        rowLength: _maxPlaces,
        mainCurrentRowIndex: -1,
        mainCurrentRowLabel: '',
        mainBranchIndex: -1,
        emptySpacingIndex: List.generate(_maxPlaces, (index) => index + 1),
        tickets: [],
        holdTickets: [],
        bigTextSpacingIndex: [22],
        mainCurrentBigText: LocaleKeys.scene.tr(),
      )
    ];

    return Column(
      children: [
        Expanded(
          child: SeatLayoutWidgetV2(
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
            onSeatStateChanged:
                (currentIndex, placeNumber, currentState, ticketId) {
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
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding.w),
          child: TertiaryButton(
            title: LocaleKeys.noSeating.tr(),
            onPressed: () {
              context.navigateTo(
                TicketStandingPlacesRoute(
                  eventId: event.id,
                  dateTime: eventDate,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

const _maxPlaces = 44;

const _emptySpaces = [22, 23];

const _branchIndex = 1;
