import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_place_v2.freezed.dart';

@freezed
class SeatPlaceV2 with _$SeatPlaceV2 {
  const SeatPlaceV2._();
  const factory SeatPlaceV2({
    /// currentIndex row index *can be different fot the same row*
    required int currentRowIndex,
    required String rowLabel,
    required String bigText,
    required PlaceStateV2 seatState,
    required int seatPlace,
    String? ticketId,
  }) = _SeatPlaceV2;
}
