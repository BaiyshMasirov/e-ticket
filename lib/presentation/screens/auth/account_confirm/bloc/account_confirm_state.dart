import 'package:eticket/auth/authentication.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_confirm_state.freezed.dart';

@freezed
class AccountConfirmState with _$AccountConfirmState {
  const AccountConfirmState._();

  const factory AccountConfirmState.initial() = _AccountConfirmStateInitial;

  const factory AccountConfirmState.loading() = _AccountConfirmStateLoading;

  const factory AccountConfirmState.success({
    required UserCredentials userCreds,
    required String email,
  }) = _AccountConfirmStateSuccess;

  const factory AccountConfirmState.failure({
    String? errorMessage,
  }) = _AccountConfirmStateFailure;
}
