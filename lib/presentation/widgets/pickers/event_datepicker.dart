import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:eticket/presentation/theme/theme.dart';

class EventDatepickerDialog extends StatelessWidget {
  final List<DateTime> eventDateTimes;
  final Function(DateTime datetime) onDatePick;

  const EventDatepickerDialog._({
    required this.eventDateTimes,
    required this.onDatePick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: SizedBox(
        width: context.screenSize.screenWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.r),
                  child: Container(
                    padding: EdgeInsets.all(5.w),
                    decoration: BoxDecoration(
                      color: context.colorScheme.surface.withOpacity(0.9),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaY: 15,
                        sigmaX: 15,
                        tileMode: TileMode.decal,
                      ),
                      child: IconButton(
                        onPressed: () {
                          context.popRoute();
                        },
                        icon: const Icon(CupertinoIcons.clear_circled),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120.h,
              child: eventDateTimes.isEmpty
                  ? Center(
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          color: context.colorScheme.tertiaryContainer,
                          borderRadius: defaultBr,
                        ),
                        child: Text(LocaleKeys.empty.tr()),
                      ),
                    )
                  : RotatedBox(
                      quarterTurns: -1,
                      child: ListWheelScrollView(
                        physics: const FixedExtentScrollPhysics(),
                        itemExtent: 90.w,
                        diameterRatio: 2,
                        children: eventDateTimes
                            .map(
                              (eventDate) => RotatedBox(
                                quarterTurns: 1,
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      context.popRoute();
                                      onDatePick(eventDate);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: context
                                            .colorScheme.tertiaryContainer,
                                        borderRadius: defaultBr,
                                      ),
                                      // width: 70.w,
                                      height: 80.h,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              DateFormatters.toDateTime(
                                                eventDate,
                                                pattern: DateFormatters
                                                    .dMMMSpacedTemplate,
                                                locale: context.locale,
                                              ),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                            Text(
                                              DateFormatters.toDateTime(
                                                eventDate,
                                                pattern: DateFormatters
                                                    .hhmmColonTemplate,
                                                locale: context.locale,
                                              ),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            Divider(
                                              color: context
                                                  .colorScheme.inverseSurface,
                                            ),
                                            Text(
                                              eventDate.year.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  static void showEventDatepickerDialog({
    required BuildContext context,
    required List<DateTime> eventDateTimes,
    required Function(DateTime datetime) onDatePick,
  }) {
    showDialog(
      context: context,
      builder: (context) => EventDatepickerDialog._(
        eventDateTimes: eventDateTimes,
        onDatePick: onDatePick,
      ),
    );
  }
}
