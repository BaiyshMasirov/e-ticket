import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_place_secondary_v2.freezed.dart';

@freezed
class SeatPlaceSecondaryV2 with _$SeatPlaceSecondaryV2 {
  const SeatPlaceSecondaryV2._();
  const factory SeatPlaceSecondaryV2({
    required int branchIndex,
    required String rowLabel,
    required int currentRowIndex,
    required int placeIndex,
    required int placeNumber,
  }) = _SeatPlaceSecondaryV2;
}
