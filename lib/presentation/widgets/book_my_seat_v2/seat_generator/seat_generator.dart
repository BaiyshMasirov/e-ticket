import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:collection/collection.dart';

class SeatGenerator {
  static SeatRowPlaceV2 generateSeatPlaces({
    required int rowLength,
    required int mainCurrentRowIndex,
    required String mainCurrentRowLabel,
    required int mainBranchIndex,
    int leftOffsetCount = 0,
    int beginPlaceNumber = 1,
    List<int> blockedPlacesNumber = const [],
    List<int> halfSpacingIndex = const [],
    List<int> emptySpacingIndex = const [],
    List<int> textLabelSpacingIndex = const [],
    List<SeatPlaceSecondaryV2> secondarySeatPlaces = const [],
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
            currentRowIndex: mainCurrentRowIndex,
            seatState: PlaceStateV2.text,
            seatPlace: -1,
          );
        }
        if (halfSpacingIndex.contains(innerPlace)) {
          return SeatPlaceV2(
            rowLabel: mainCurrentRowLabel,
            currentRowIndex: mainCurrentRowIndex,
            seatState: PlaceStateV2.emptyHalf,
            seatPlace: -1,
          );
        }

        if (emptySpacingIndex.contains(innerPlace)) {
          return SeatPlaceV2(
            rowLabel: mainCurrentRowLabel,
            currentRowIndex: mainCurrentRowIndex,
            seatState: PlaceStateV2.empty,
            seatPlace: -1,
          );
        }

        final secondaryPlace = secondarySeatPlaces.firstWhereOrNull(
              (place) => place.placeIndex == innerPlace,
        );

        return SeatPlaceV2(
          currentRowIndex: secondaryPlace?.currentRowIndex ?? mainCurrentRowIndex,
          rowLabel: secondaryPlace?.rowLabel ?? mainCurrentRowLabel,
          seatState: PlaceStateV2.unselected,
          seatPlace: secondaryPlace?.placeNumber ?? placeNumber++,
        );
      },
    );

    final seatPlaces = [
      ...List.generate(
        leftOffsetCount,
            (index) => SeatPlaceV2(
          rowLabel: mainCurrentRowLabel,
          currentRowIndex: mainCurrentRowIndex,
          seatState: PlaceStateV2.empty,
          seatPlace: -1,
        ),
      ),
      ...places.nonNulls.toList().reversed.toList(),
    ];

    return SeatRowPlaceV2(
      rowPlaceLabel: mainCurrentRowLabel,
      seatPlaces: seatPlaces,
    );
  }
}