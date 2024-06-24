import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_code_timer_state.freezed.dart';

@freezed
class EmailCodeTimerState with _$EmailCodeTimerState {
  const EmailCodeTimerState._();

  const factory EmailCodeTimerState.initial({
    required int duration,
  }) = _EmailCodeTimerStateInitial;

  const factory EmailCodeTimerState.runInProgress({
    required int duration,
  }) = _EmailCodeTimerStateRunInProgress;

  const factory EmailCodeTimerState.runComplete({
    required int duration,
  }) = _EmailCodeTimerStateRunComplete;
}
