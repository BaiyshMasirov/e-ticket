import 'package:eticket/presentation/widgets/book_my_seat_v2/models/seat_place_v2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_row_place_v2.freezed.dart';

@freezed
class SeatRowPlaceV2 with _$SeatRowPlaceV2 {
  const SeatRowPlaceV2._();
  const factory SeatRowPlaceV2({
    required String rowPlaceLabel,
    required List<SeatPlaceV2> seatPlaces,
  }) = _SeatRowPlaceV2;
}
