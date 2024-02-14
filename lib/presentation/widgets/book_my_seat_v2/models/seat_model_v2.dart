import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:eticket/presentation/widgets/book_my_seat_v2/book_my_seat_v2.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_model_v2.freezed.dart';

@freezed
class SeatModelV2 with _$SeatModelV2 {
  const SeatModelV2._();
  const factory SeatModelV2({
    required PlaceStateV2 seatState,
    required int seatPlace,
    required EdgeInsets seatPlaceTextPadding,
    required String pathSelectedSeat,
    required String pathUnSelectedSeat,
    required String pathSoldSeat,
    required String pathDisabledSeat,
    @Default(50) double seatSvgSize,
    required int currentRowIndex,
    required String rowLabel,
  }) = _SeatModelV2;
}
