import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:eticket/data/models/models.dart';

part 'sports_seat_places_state.freezed.dart';

@freezed
class SportsSeatPlacesState with _$SportsSeatPlacesState {
  const SportsSeatPlacesState._();
  const factory SportsSeatPlacesState.initial() = _SportsSeatPlacesStateInitial;
  const factory SportsSeatPlacesState.loading() = SportsSeatPlacesStateLoading;
  const factory SportsSeatPlacesState.data({
    required List<TicketDto> tickets,
  }) = _SportsSeatPlacesStateData;
  const factory SportsSeatPlacesState.error({
    required String? errorMessage,
  }) = _SportsSeatPlacesStateError;
}
