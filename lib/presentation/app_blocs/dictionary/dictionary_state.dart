import 'package:eticket/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'dictionary_state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const DictionaryState._();
  const factory DictionaryState.initial({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
    required List<KeyValueMapDto> locationTypes,
  }) = _DictionaryInitial;
  const factory DictionaryState.data({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
    required List<KeyValueMapDto> locationTypes,
  }) = _DictionaryData;
  const factory DictionaryState.loading({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
    required List<KeyValueMapDto> locationTypes,
  }) = DictionaryLoading;
  const factory DictionaryState.failure({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
    required List<KeyValueMapDto> locationTypes,
    String? errorMessage,
  }) = _DictionaryFailure;

  KeyValueMapDto? getEventTypeByKey(int key) {
    return eventTypes.firstWhereOrNull((element) => element.key == key);
  }

  KeyValueMapDto? getEventStatusByKey(int key) {
    return eventStatuses.firstWhere((element) => element.key == key);
  }

  KeyValueMapDto? getTicketTypeByKey(int key) {
    return ticketTypes.firstWhere((element) => element.key == key);
  }

  KeyValueMapDto? getTicketStatusByKey(int key) {
    return ticketStatuses.firstWhere((element) => element.key == key);
  }

  KeyValueMapDto? getLocationTypeByKey(int key) {
    return locationTypes.firstWhere((element) => element.key == key);
  }
}
