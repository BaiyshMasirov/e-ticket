import 'package:eticket/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_confirm_state.freezed.dart';

@freezed
class AccountConfirmState with _$AccountConfirmState {
  const AccountConfirmState._();

  const factory AccountConfirmState.initial() = _AccountConfirmStateInitial;

  const factory AccountConfirmState.success({
    required ApiUserTokenDto tokenData,
  }) = _AccountConfirmStateSuccess;

  const factory AccountConfirmState.failure({
    String? errorMessage,
  }) = _AccountConfirmStateFailure;
}
