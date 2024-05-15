import 'package:eticket/presentation/screens/payment/pages/payment_web_view/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/alerts/alerts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatelessWidget {
  final Function() onSuccess;

  const PaymentWebView({
    required this.onSuccess,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentWebCubit, PaymentWebState>(
      builder: (_, s) => s.maybeMap(
        orElse: () => const SizedBox.shrink(),
        error: (_) => Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: DataFetchFailure(
            onTryLoadAgain: () =>
                context.read<PaymentWebCubit>().createPayment(),
            error: _.errorMessage,
          ),
        ),
        success: (_) => _PaymentWebViewWidget(
          onSuccess: onSuccess,
          acquiringUrl: _.acquiringUrl,
          successRedirectUrl: _.successRedirectUrl,
        ),
      ),
    );
  }
}

class _PaymentWebViewWidget extends StatelessWidget {
  final Function() onSuccess;
  final WebViewController controller;

  _PaymentWebViewWidget({
    required this.onSuccess,
    required String acquiringUrl,
    required String successRedirectUrl,
    Key? key,
  })  : controller = WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              onNavigationRequest: (request) {
                if (request.url.startsWith(successRedirectUrl)) {
                  onSuccess();
                  return NavigationDecision.prevent;
                }

                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(Uri.parse(acquiringUrl)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: controller,
    );
  }
}
