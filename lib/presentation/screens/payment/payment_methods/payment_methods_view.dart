import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodsView extends StatelessWidget {
  const PaymentMethodsView({
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
                color: context.appColors.primaryButton,
                borderRadius: defaultBr,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${LocaleKeys.cost.tr()}:',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: context.appColors.onContainer,
                    ),
                  ),
                  //TODO: remove hardcode tickets cost
                  Text(
                    1343.toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: context.appColors.onContainer,
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

              return Container(
                decoration: BoxDecoration(
                  borderRadius: defaultBr,
                  border: Border.all(color: context.colorScheme.outline),
                  color: context.appColors.container,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: defaultBr,
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      decoration: BoxDecoration(
                        borderRadius: defaultBr,
                        border: Border.all(color: context.colorScheme.outline),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            type.getImagePath,
                            width: context.screenSize.screenWidth / 4,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            type.name.toLowerCase().tr(),
                            style: TextStyle(
                              color: context.appColors.onContainer,
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
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
