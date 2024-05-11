import 'package:eticket/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'dictionary_state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const DictionaryState._();
  const factory DictionaryState.initial({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> ticketTypes,
  }) = _DictionaryInitial;
  const factory DictionaryState.data({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> ticketTypes,
  }) = _DictionaryData;
  const factory DictionaryState.loading({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> ticketTypes,
  }) = DictionaryLoading;
  const factory DictionaryState.failure({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> ticketTypes,
    String? errorMessage,
  }) = _DictionaryFailure;

  KeyValueMapDto? getEventTypeByKey(int key) {
    return eventTypes.firstWhereOrNull((element) => element.key == key);
  }

  KeyValueMapDto? getTicketTypeByKey(int key) {
    return ticketTypes.firstWhere((element) => element.key == key);
  }
}
