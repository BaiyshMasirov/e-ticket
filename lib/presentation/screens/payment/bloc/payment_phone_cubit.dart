import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/payment/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PaymentPhoneCubit extends Cubit<PaymentPhoneState> {
  final SnackbarCubit _snackbarCubit;
  final PaymentRepository _paymentRepository;
  final String _bookingId;
  final PaymentType paymentType;

  PaymentPhoneCubit._({
    required SnackbarCubit snackbarCubit,
    required PaymentRepository paymentRepository,
    required String bookingId,
    required this.paymentType,
  })  : _paymentRepository = paymentRepository,
        _snackbarCubit = snackbarCubit,
        _bookingId = bookingId,
        super(const PaymentPhoneState.initial());

  Future<void> createPayment({
    required String phoneNumber,
  }) async {
    emit(PaymentPhoneState.paymentCreating(phoneNumber: phoneNumber));

    final successOrFailure = await _paymentRepository.createPayment(
      phoneNumber: phoneNumber,
      bookingId: _bookingId,
      paymentType: paymentType,
    );

    successOrFailure.fold(
      (l) => emit(PaymentPhoneState.paymentCreateError(
        phoneNumber: phoneNumber,
        errorMessage: l.errorMessage,
      )),
      (r) {
        if (r.succeded && r.link != null) {
          _snackbarCubit.showSuccessSnackbar(message: r.message ?? '');

          emit(PaymentPhoneState.paymentCreateSuccess(
            phoneNumber: phoneNumber,
            deepLink: r.link!,
          ));
        } else {
          emit(PaymentPhoneState.paymentCreateError(
            phoneNumber: phoneNumber,
            errorMessage: r.message ?? LocaleKeys.unknown_error.tr(),
          ));
        }
      },
    );
  }

  factory PaymentPhoneCubit.initialize({
    required String bookingId,
    required PaymentType paymentType,
  }) {
    return PaymentPhoneCubit._(
      paymentType: paymentType,
      bookingId: bookingId,
      snackbarCubit: GetIt.I.get(),
      paymentRepository: GetIt.I.get(),
    );
  }
}
