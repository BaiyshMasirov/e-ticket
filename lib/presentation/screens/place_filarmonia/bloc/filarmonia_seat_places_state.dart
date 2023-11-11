import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/models/models.dart';

part 'filarmonia_seat_places_state.freezed.dart';

@freezed
class FilarmoniaSeatPlacesState with _$FilarmoniaSeatPlacesState {
  const FilarmoniaSeatPlacesState._();
  const factory FilarmoniaSeatPlacesState.initial() = _FilarmoniaSeatPlacesStateInitial;
  const factory FilarmoniaSeatPlacesState.loading() = FilarmoniaSeatPlacesStateLoading;
  const factory FilarmoniaSeatPlacesState.data({
    required List<TicketDto> tickets,
  }) = _FilarmoniaSeatPlacesStateData;
  const factory FilarmoniaSeatPlacesState.error({
    required String? errorMessage,
  }) = _FilarmoniaSeatPlacesStateError;
}
