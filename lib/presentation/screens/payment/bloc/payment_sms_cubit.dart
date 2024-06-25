import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/repository/repository.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/payment/bloc/payment_sms_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PaymentSMSCubit extends Cubit<PaymentSMSState> {
  final SnackbarCubit _snackbarCubit;
  final PaymentRepository _paymentRepository;
  final String _bookingId;
  final PaymentType paymentType;

  PaymentSMSCubit._({
    required SnackbarCubit snackbarCubit,
    required PaymentRepository paymentRepository,
    required String bookingId,
    required this.paymentType,
  })  : _paymentRepository = paymentRepository,
        _snackbarCubit = snackbarCubit,
        _bookingId = bookingId,
        super(const PaymentSMSState.initial());

  Future<void> createPaymentByPhoneNumber({
    required String phoneNumber,
  }) async {
    emit(PaymentSMSState.paymentCreating(phoneNumber: phoneNumber));

    final successOrFailure = await _paymentRepository.createPayment(
      phoneNumber: phoneNumber,
      bookingId: _bookingId,
      paymentType: paymentType,
    );

    successOrFailure.fold(
      (l) => emit(PaymentSMSState.paymentCreateError(
        phoneNumber: phoneNumber,
        errorMessage: l.errorMessage,
      )),
      (r) {
        if (r.succeded) {
          emit(PaymentSMSState.paymentCreateSuccess(
            phoneNumber: phoneNumber,
          ));
        } else {
          emit(PaymentSMSState.paymentCreateError(
            phoneNumber: phoneNumber,
            errorMessage: r.message ?? LocaleKeys.unknown_error.tr(),
          ));
        }
      },
    );
  }

  Future<void> confirmPaymentBySms({
    required String phoneNumber,
    required String code,
  }) async {
    emit(PaymentSMSState.paymentConfirming(
      phoneNumber: phoneNumber,
      code: code,
    ));

    final successOrFailure = await _paymentRepository.confirmPayment(
      code: code,
      bookingId: _bookingId,
      phoneNumber: phoneNumber,
    );

    successOrFailure.fold(
      (e) => emit(PaymentSMSState.paymentConfirmError(
        phoneNumber: phoneNumber,
        code: code,
        errorMessage: e.errorMessage ?? LocaleKeys.unknown_error.tr(),
      )),
      (result) {
        if (result.succeed) {
          _snackbarCubit.showSuccessSnackbar(
            message:
                result.message ?? LocaleKeys.payment_success_description.tr(),
          );

          emit(
            PaymentSMSState.paymentConfirmSuccess(
              phoneNumber: phoneNumber,
              code: code,
            ),
          );
        } else {
          _snackbarCubit.showErrorSnackbar(
            message: LocaleKeys.payment_success_description.tr(),
          );

          emit(PaymentSMSState.paymentConfirmError(
            phoneNumber: phoneNumber,
            code: code,
            errorMessage: result.message ?? LocaleKeys.unknown_error.tr(),
          ));
        }
      },
    );
  }

  factory PaymentSMSCubit.initialize({
    required String bookingId,
    required PaymentType paymentType,
  }) {
    return PaymentSMSCubit._(
      paymentType: paymentType,
      bookingId: bookingId,
      snackbarCubit: GetIt.I.get(),
      paymentRepository: GetIt.I.get(),
    );
  }
}
