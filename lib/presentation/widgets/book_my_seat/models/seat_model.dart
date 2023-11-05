import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_model.freezed.dart';

@freezed
class SeatModel with _$SeatModel {
  const SeatModel._();
  const factory SeatModel({
    required SeatState seatState,
    required int seatPlace,
    required EdgeInsets seatPlaceTextPadding,
    required int rowI,
    required int colI,
    required String pathSelectedSeat,
    required String pathUnSelectedSeat,
    required String pathSoldSeat,
    required String pathDisabledSeat,
    @Default(50) double seatSvgSize,
  }) = _SeatModel;
}
