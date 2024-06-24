import 'dart:async';

import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/email_code_timer/email_code_timer.dart';
import 'package:eticket/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailCodeTimerCubit extends Cubit<EmailCodeTimerState> {
  final EmailCodeTimerRepository _emailCodeTimerRepository;

  final Ticker _ticker;

  /// duration in seconds
  static const int _duration = 180;

  StreamSubscription<int>? _tickerSubscription;

  EmailCodeTimerCubit._({
    required Ticker ticker,
    required EmailCodeTimerRepository emailCodeTimerRepository,
  })  : _ticker = ticker,
        _emailCodeTimerRepository = emailCodeTimerRepository,
        super(const EmailCodeTimerState.initial(duration: _duration)) {
    final dateTime = _emailCodeTimerRepository.getEmailCodeDateTime();

    if (dateTime == null) return;

    final now = DateTime.now();

    if (dateTime.add(const Duration(seconds: _duration)).isAfter(now)) {
      final seconds = dateTime.difference(now).inSeconds;

      if (seconds <= 0) {
        _emailCodeTimerRepository.clear();

        return;
      }

      _startTimer(duration: seconds);
    }
  }

  factory EmailCodeTimerCubit.initialize({
    required EmailCodeTimerRepository emailCodeTimerRepository,
  }) {
    return EmailCodeTimerCubit._(
      ticker: const Ticker(),
      emailCodeTimerRepository: emailCodeTimerRepository,
    );
  }

  void startTimer() {
    _emailCodeTimerRepository.saveEmailCodeDateTime(
      dateTime: DateTime.now().add(
        const Duration(seconds: _duration),
      ),
    );

    _startTimer(duration: _duration);
  }

  void _startTimer({
    required int duration,
  }) {
    emit(EmailCodeTimerState.runInProgress(duration: duration));

    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: duration)
        .listen((duration) => _timerTicked(duration: duration));
  }

  Future<void> _timerTicked({
    required int duration,
  }) async {
    if (duration > 0) {
      emit(EmailCodeTimerState.runInProgress(duration: duration));
    } else {
      emit(const EmailCodeTimerState.runComplete(duration: 0));
      _emailCodeTimerRepository.clear();
    }
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();

    return super.close();
  }
}
