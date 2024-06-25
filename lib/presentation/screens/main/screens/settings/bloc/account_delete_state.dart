import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_delete_state.freezed.dart';

@freezed
class AccountDeleteState with _$AccountDeleteState {
  const AccountDeleteState._();

  const factory AccountDeleteState.initial() = _AccountDeleteStatInitial;

  const factory AccountDeleteState.success() = _AccountDeleteStatSuccess;

  const factory AccountDeleteState.failed({
    required String? errorMessage,
  }) = _AccountDeleteStatFailed;
}
