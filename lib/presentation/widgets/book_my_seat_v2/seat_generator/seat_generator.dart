import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:collection/collection.dart';
import 'package:eticket/data/models/models.dart';

class SeatGenerator {
  static SeatRowPlaceV2 generateSeatPlaces({
    required int rowLength,

    /// seat place rows number
    required int mainCurrentRowIndex,
    required String mainCurrentRowLabel,

    /// branch of row
    required int mainBranchIndex,

    /// available tickets
    required List<TicketDto> tickets,

    /// hold tickets
    required List<TicketDto> holdTickets,
    String mainCurrentBigText = '',
    int leftOffsetCount = 0,
    int beginPlaceNumber = 1,
    List<int> blockedPlacesNumber = const [],
    List<int> halfSpacingIndex = const [],
    List<int> emptySpacingIndex = const [],
    List<int> textLabelSpacingIndex = const [],
    List<int> bigTextSpacingIndex = const [],
    List<SeatPlaceSecondaryV2> secondarySeatPlaces = const [],

    /// reverse places
    bool revert = false,
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
            bigText: mainCurrentBigText,
            currentRowIndex: mainCurrentRowIndex,
            seatState: PlaceStateV2.text,
            seatPlace: -1,
          );
        }
        if (bigTextSpacingIndex.contains(innerPlace)) {
          return SeatPlaceV2(
            rowLabel: mainCurrentRowLabel,
            bigText: mainCurrentBigText,
            currentRowIndex: mainCurrentRowIndex,
            seatState: PlaceStateV2.bigText,
            seatPlace: -1,
          );
        }
        if (halfSpacingIndex.contains(innerPlace)) {
          return SeatPlaceV2(
            rowLabel: mainCurrentRowLabel,
            bigText: mainCurrentBigText,
            currentRowIndex: mainCurrentRowIndex,
            seatState: PlaceStateV2.emptyHalf,
            seatPlace: -1,
          );
        }

        if (emptySpacingIndex.contains(innerPlace)) {
          return SeatPlaceV2(
            rowLabel: mainCurrentRowLabel,
            bigText: mainCurrentBigText,
            currentRowIndex: mainCurrentRowIndex,
            seatState: PlaceStateV2.empty,
            seatPlace: -1,
          );
        }

        final secondaryPlace = secondarySeatPlaces.firstWhereOrNull(
          (place) => place.placeIndex == innerPlace,
        );

        final rowIndex = secondaryPlace?.currentRowIndex ?? mainCurrentRowIndex;
        final rowLabel = secondaryPlace?.rowLabel ?? mainCurrentRowLabel;
        final seatPlace = secondaryPlace?.placeNumber ?? placeNumber++;

        final currentPlace = tickets.firstWhereOrNull(
          (item) =>
              item.branchType ==
                  (secondaryPlace?.branchIndex ?? mainBranchIndex) &&
              item.rowNumber == rowIndex &&
              item.placeNumber == seatPlace,
        );

        final PlaceStateV2 seatState;

        switch (currentPlace?.status) {
          case TicketStatus.FREE:
            seatState = holdTickets.any((e) => e.id == currentPlace?.id)
                ? PlaceStateV2.selected
                : PlaceStateV2.unselected;
          case TicketStatus.PAID:
          case TicketStatus.WAITING_PAYMENT:
            seatState = PlaceStateV2.sold;
          default:
            seatState = PlaceStateV2.disabled;
        }

        return SeatPlaceV2(
          ticketId: currentPlace?.id,
          currentRowIndex: rowIndex,
          rowLabel: rowLabel,
          bigText: mainCurrentBigText,
          seatState: seatState,
          seatPlace: seatPlace,
        );
      },
    );

    final seatPlaces = [
      ...List.generate(
        leftOffsetCount,
        (index) => SeatPlaceV2(
          rowLabel: mainCurrentRowLabel,
          bigText: mainCurrentBigText,
          currentRowIndex: mainCurrentRowIndex,
          seatState: PlaceStateV2.empty,
          seatPlace: -1,
        ),
      ),
      if (!revert) ...places.nonNulls.toList().reversed.toList(),
      if (revert) ...places.nonNulls.toList(),
    ];

    return SeatRowPlaceV2(
      rowPlaceLabel: mainCurrentRowLabel,
      seatPlaces: seatPlaces,
    );
  }
}
