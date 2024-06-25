import 'package:eticket/presentation/widgets/book_my_seat_v2/models/seat_row_place_v2.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_layout_state_model_v2.freezed.dart';

@freezed
class SeatLayoutStateModelV2 with _$SeatLayoutStateModelV2 {
  const SeatLayoutStateModelV2._();
  const factory SeatLayoutStateModelV2({
    required int rows,
    required List<SeatRowPlaceV2> currentSeatsState,
    required String pathSelectedSeat,
    required String pathUnSelectedSeat,
    required String pathSoldSeat,
    required String pathDisabledSeat,
    required EdgeInsets seatPlaceTextPadding,
    @Default(50) double seatSvgSize,
  }) = _SeatLayoutStateModelV2;
}
