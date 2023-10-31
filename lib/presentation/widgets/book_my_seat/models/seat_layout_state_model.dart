import 'package:eticket/presentation/widgets/book_my_seat/book_my_seat.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_layout_state_model.freezed.dart';

@freezed
class SeatLayoutStateModel with _$SeatLayoutStateModel {
  const SeatLayoutStateModel._();
  const factory SeatLayoutStateModel({
    required int rows,
    required int cols,
    required List<List<SeatState>> currentSeatsState,
    required String pathSelectedSeat,
    required String pathUnSelectedSeat,
    required String pathSoldSeat,
    required String pathDisabledSeat,
    @Default(50) int seatSvgSize,
  }) = _SeatLayoutStateModel;
}

