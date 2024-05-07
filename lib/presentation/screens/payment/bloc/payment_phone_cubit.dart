import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/payment/bloc/bloc.dart';
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

    final successOrFailure = await _paymentRepository.createDeepLinkPayment(
      phoneNumber: phoneNumber,
      bookingId: _bookingId,
      paymentType: paymentType,
    );

    successOrFailure.fold(
      (l) => emit(PaymentPhoneState.paymentCreateError(
        phoneNumber: phoneNumber,
        errorMessage: l.errorMessage,
      )),
      (r) => emit(PaymentPhoneState.paymentCreateSuccess(
        phoneNumber: phoneNumber,
        deepLink: r.linkApp,
      )),
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
