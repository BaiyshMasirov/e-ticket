import 'package:eticket/presentation/widgets/book_my_seat/models/seat_place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_row_place.freezed.dart';

@freezed
class SeatRowPlace with _$SeatRowPlace {
  const SeatRowPlace._();
  const factory SeatRowPlace({
    required String rowPlaceLabel,
    required List<SeatPlace> seatPlaces,
  }) = _SeatRowPlace;
}
