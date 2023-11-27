import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/models/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _bR = BorderRadius.circular(10.r);

class HistoryItem extends StatelessWidget {
  final UserBookingsListDto booking;

  const HistoryItem({
    required this.booking,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd/MM/yyyy')
        .format(DateTime.parse(booking.eventDate ?? ''));

    return InkWell(
      onTap: () {
        context.navigateTo(UserTicketsBookingsRoute(
          tiketId: booking.id ?? '',
        ));
      },
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding.w / 2),
        decoration: BoxDecoration(
          color: context.colorScheme.onError,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: context.screenSize.screenWidth / 3,
                  child: ClipRRect(
                    borderRadius: defaultBr,
                    child: Image.network(
                      booking.eventImage ?? '',
                      fit: BoxFit.fitHeight,
                      height: 90.h,
                      loadingBuilder: (ctx, child, progress) {
                        if (progress == null) {
                          return child;
                        }

                        return Container(
                          color: context.colorScheme.outline.withOpacity(0.1),
                        );
                      },
                      errorBuilder: (ctx, e, st) => Container(
                        color: context.colorScheme.outline.withOpacity(0.2),
                        height: 90.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    booking.eventName.toString(),
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(formattedDate),
                  SizedBox(height: 5.h),
                  Text(
                    context.dictionaries
                            .getEventStatusByKey(booking.status)
                            ?.value ??
                        '',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    booking.type.name.tr(),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
