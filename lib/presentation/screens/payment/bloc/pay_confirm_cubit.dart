import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/repository/repository.dart';
import 'package:eticket/presentation/screens/payment/bloc/pay_confirm_state.dart';
import 'package:get_it/get_it.dart';

class PayConfirmCubit extends Cubit<PayConfirmState> {
  final PaymentRepository _paymentRepository;
  final String _bookingId;
  final PaymentType paymentType;

  PayConfirmCubit._({
    required PaymentRepository paymentRepository,
    required String bookingId,
    required this.paymentType,
  })  : _paymentRepository = paymentRepository,
        _bookingId = bookingId,
        super(const PayConfirmState.initial(
          phoneNumber: null,
        ));

  Future<void> createPayment({
    required String phoneNumber,
  }) async {
    emit(PayConfirmState.creatingPayment(phoneNumber: phoneNumber));

    final successOrFailure = await _paymentRepository.createPayment(
      phoneNumber: phoneNumber,
      bookingId: _bookingId,
      paymentType: paymentType,
    );

    successOrFailure.fold(
      (l) => emit(PayConfirmState.creatingPaymentError(
        phoneNumber: phoneNumber,
        errorMessage: l.errorMessage,
      )),
      (r) => emit(PayConfirmState.creatingPaymentSuccess(
        phoneNumber: phoneNumber,
        code: null,
      )),
    );
  }

  Future<void> confirmPayment({
    required String phoneNumber,
    required String code,
  }) async {
    emit(PayConfirmState.confirmingPayment(
      phoneNumber: phoneNumber,
      code: code,
    ));

    final successOrFailure = await _paymentRepository.confirmPayment(
      code: code,
      bookingId: _bookingId,
    );

    successOrFailure.fold(
      (l) => emit(PayConfirmState.confirmingPaymentError(
        phoneNumber: phoneNumber,
        code: code,
        errorMessage: l.errorMessage,
      )),
      (r) => emit(PayConfirmState.confirmingPaymentSuccess(
        phoneNumber: phoneNumber,
        code: code,
      )),
    );
  }

  factory PayConfirmCubit.initialize({
    required String bookingId,
    required PaymentType paymentType,
  }) {
    return PayConfirmCubit._(
      paymentType: paymentType,
      bookingId: bookingId,
      paymentRepository: GetIt.I.get(),
    );
  }
}
