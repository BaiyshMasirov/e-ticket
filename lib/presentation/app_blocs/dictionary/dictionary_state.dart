import 'package:eticket/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const DictionaryState._();
  const factory DictionaryState.initial({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
  }) = _DictionaryInitial;
  const factory DictionaryState.data({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
  }) = _DictionaryData;
  const factory DictionaryState.loading({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
  }) = DictionaryLoading;
  const factory DictionaryState.failure({
    required List<KeyValueMapDto> eventTypes,
    required List<KeyValueMapDto> eventStatuses,
    required List<KeyValueMapDto> ticketTypes,
    required List<KeyValueMapDto> ticketStatuses,
    String? errorMessage,
  }) = _DictionaryFailure;
}
