import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/payment/pages/payment_web_view/bloc/payment_web_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PaymentWebCubit extends Cubit<PaymentWebState> {
  final PaymentRepository _paymentRepository;
  final SnackbarCubit _snackbarCubit;

  final String bookingId;
  final PaymentType paymentType;

  PaymentWebCubit._({
    required this.bookingId,
    required this.paymentType,
    required PaymentRepository paymentRepository,
    required SnackbarCubit snackbarCubit,
  })  : _paymentRepository = paymentRepository,
        _snackbarCubit = snackbarCubit,
        super(const PaymentWebState.initial());

  Future<void> createPayment() async {
    emit(const PaymentWebState.loading());

    final result = await _paymentRepository.createWebViewPayment(
      bookingId: bookingId,
      paymentType: paymentType,
    );
    result.fold(
      (e) {
        final errorMessage = e.errorMessage ?? LocaleKeys.unknown_error.tr();

        _snackbarCubit.showErrorSnackbar(message: errorMessage);

        emit(PaymentWebState.error(errorMessage: errorMessage));
      },
      (data) {
        if (data.succeded && data.link != null && data.redirectUrl != null) {
          _snackbarCubit.showSuccessSnackbar(
            message:
                data.message ?? LocaleKeys.payment_success_description.tr(),
          );

          emit(PaymentWebState.success(
            acquiringUrl: data.link!,
            successRedirectUrl: data.redirectUrl!,
          ));
        } else {
          final errorMessage = data.message ?? LocaleKeys.unknown_error.tr();

          _snackbarCubit.showErrorSnackbar(message: errorMessage);

          emit(PaymentWebState.error(errorMessage: errorMessage));
        }
      },
    );
  }

  factory PaymentWebCubit.initialize({
    required String bookingId,
    required PaymentType paymentType,
  }) {
    return PaymentWebCubit._(
      bookingId: bookingId,
      paymentType: paymentType,
      paymentRepository: GetIt.I.get<PaymentRepository>(),
      snackbarCubit: GetIt.I.get<SnackbarCubit>(),
    );
  }
}
