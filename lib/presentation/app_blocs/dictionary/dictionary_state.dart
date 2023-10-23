import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const DictionaryState._();
  const factory DictionaryState.initial() = _DictionaryInitial;
  const factory DictionaryState.data() = _DictionaryData;
  const factory DictionaryState.loading() = DictionaryLoading;
  const factory DictionaryState.failure() = _DictionaryFailure;
}
