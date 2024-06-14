import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_recover_state.freezed.dart';

@freezed
class AccountRecoverState with _$AccountRecoverState {
  const AccountRecoverState._();

  const factory AccountRecoverState.initial() = _AccountRecoverStateInitial;

  const factory AccountRecoverState.loading() = _AccountRecoverStateLoading;

  const factory AccountRecoverState.confirmCodeSent() =
      _AccountRecoverStateConfirmCodeSent;

  const factory AccountRecoverState.recoverSuccess() =
      _AccountRecoverStateRecoverSuccess;

  const factory AccountRecoverState.recoverError({
    required String? errorMessage,
  }) = _AccountRecoverStateRecoverError;
}
