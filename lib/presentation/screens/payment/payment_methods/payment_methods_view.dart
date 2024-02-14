import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/main/models/main_screen_tab.dart';
import 'package:eticket/presentation/screens/payment/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:eticket/utils/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodsView extends HookWidget {
  final double preciseCost;
  final String bookingId;
  final List<TicketDto> tickets;

  const PaymentMethodsView({
    required this.preciseCost,
    required this.bookingId,
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: AppSliverScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: kDefaultPadding)),
          SliverList.separated(
            itemCount: tickets.length,
            itemBuilder: (_, i) {
              final ticket = tickets[i];

              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text(
                        '${ticket.rowNumber} - ${LocaleKeys.rowNumber.tr()}',
                        style: body12Regular,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        '${ticket.placeNumber} - ${LocaleKeys.placeNumber.tr()}',
                        style: body12Regular,
                      ),
                    ]),
                    Text(
                      '${ticket.price}',
                      style: body14Bold,
                    )
                  ]);
            },
            separatorBuilder: (_, __) => SizedBox(height: 8.h),
          ),
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
                onSelected: (type) => PayConfirmBottom.showPayConfirmBottom(
                  context: context,
                  bookingId: bookingId,
                  paymentType: type,
                  onSuccess: () => context.navigateTo(MainRoute(
                    initialTab: MAIN_SCREEN_TAB.HISTORY,
                  )),
                  closePressed: () => context.popRoute(),
                ),
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
