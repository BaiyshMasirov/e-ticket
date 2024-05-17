import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart';
import 'package:eticket/presentation/screens/payment/widgets/pay_phonenumber_confirm_bottom.dart';
import 'package:eticket/presentation/screens/payment/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodsView extends HookWidget {
  final double preciseCost;
  final String bookingId;

  const PaymentMethodsView({
    required this.preciseCost,
    required this.bookingId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: AppSliverScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: kDefaultPadding)),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding * 1.5),
              decoration: BoxDecoration(
                color: context.colorScheme.primaryContainer,
                borderRadius: defaultBr,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${LocaleKeys.cost.tr()}:',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: context.colorScheme.onPrimaryContainer,
                    ),
                  ),
                  Text(
                    preciseCost.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: context.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: kDefaultPadding * 3)),
          SliverList.separated(
            itemCount: PaymentType.values.length,
            itemBuilder: (_, i) {
              final type = PaymentType.values[i];

              return PaymentOption(
                type: type,
                onSelected: (type) async {
                  switch (type.paymentCreds) {
                    case PaymentCreds.webView:
                      context.navigateTo(MainRoute(
                        initialTab: MAIN_SCREEN_TAB.bookingHistory,
                      ));
                      context.navigateTo(
                        PaymentWebViewRoute(
                          bookingId: bookingId,
                          paymentType: type,
                          onSuccess: () => context.navigateTo(MainRoute(
                            initialTab: MAIN_SCREEN_TAB.bookingHistory,
                          )),
                        ),
                      );
                    case PaymentCreds.phoneNumber:
                      return PayPhoneNumberConfirmBottom.show(
                        context: context,
                        bookingId: bookingId,
                        paymentType: type,
                        onSuccess: () => context.navigateTo(MainRoute(
                          initialTab: MAIN_SCREEN_TAB.bookingHistory,
                        )),
                        closePressed: () => context.popRoute(),
                      );
                    case PaymentCreds.phoneSmsCode:
                      return PaySMSConfirmBottom.show(
                        context: context,
                        bookingId: bookingId,
                        paymentType: type,
                        onSuccess: () => context.navigateTo(MainRoute(
                          initialTab: MAIN_SCREEN_TAB.bookingHistory,
                        )),
                        closePressed: () => context.popRoute(),
                      );
                    default:
                      context.read<SnackbarCubit>().showErrorSnackbar(
                          message:
                              LocaleKeys.payment_system_not_implemented.tr());
                  }
                },
              );
            },
            separatorBuilder: (_, __) => SizedBox(height: 8.h),
          ),
          SliverToBoxAdapter(child: SizedBox(height: kDefaultPadding)),
        ],
      ),
    );
  }
}
