import 'package:auto_route/annotations.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/screens/payment/pages/payment_web_view/bloc/bloc.dart';
import 'package:eticket/presentation/screens/payment/pages/payment_web_view/payment_web_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PaymentWebViewScreen extends StatelessWidget {
  final String bookingId;
  final PaymentType paymentType;
  final Function() onSuccess;

  const PaymentWebViewScreen({
    required this.bookingId,
    required this.paymentType,
    required this.onSuccess,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentWebCubit.initialize(
        bookingId: bookingId,
        paymentType: paymentType,
      )..createPayment(),
      child: AppScaffold(
        title: paymentType.name,
        body: PaymentWebView(onSuccess: onSuccess),
        isLoadingFunc: (context) => context.select<PaymentWebCubit, bool>(
          (c) => c.state.maybeMap(
            orElse: () => false,
            loading: (_) => true,
          ),
        ),
      ),
    );
  }
}
