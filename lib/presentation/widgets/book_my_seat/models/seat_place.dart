import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_place.freezed.dart';

@freezed
class SeatPlace with _$SeatPlace {
  const SeatPlace._();
  const factory SeatPlace({
    required SeatState seatState,
    required int seatPlace,
  }) = _SeatPlace;
}
