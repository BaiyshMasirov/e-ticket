import 'package:common/common.dart';
import 'package:eticket/presentation/app_blocs/snackbar/snackbar_state.dart';

export 'snackbar_state.dart';

class SnackbarCubit extends Cubit<SnackbarState> {
  SnackbarCubit() : super(const SnackbarState.initial());

  void showErrorSnackbar({required String? message}) {
    emit(SnackbarState.error(message: message));
    emit(const SnackbarState.initial());
  }

  void showSuccessSnackbar({required String message}) {
    emit(SnackbarState.success(message: message));
    emit(const SnackbarState.initial());
  }
}
