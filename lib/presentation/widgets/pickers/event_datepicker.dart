import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/utils/hooks/hooks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:eticket/presentation/theme/theme.dart';

class EventDatepickerDialog extends HookWidget {
  final List<DateTime> eventDateTimes;
  final Function(DateTime datetime) onDatePick;
  final DateTime datePickRestrictBefore;

  const EventDatepickerDialog._({
    required this.eventDateTimes,
    required this.onDatePick,
    required this.datePickRestrictBefore,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useFixedExtentScrollController(
      initialItem: eventDateTimes.indexWhere(
        (e) => e.isAfter(datePickRestrictBefore),
      ),
    );

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
                          context.maybePop();
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
                        controller: scrollController,
                        physics: const FixedExtentScrollPhysics(),
                        itemExtent: 100.w,
                        diameterRatio: 1.2,
                        children: eventDateTimes.map(
                          (eventDate) {
                            final restrictDatePick =
                                eventDate.isBefore(datePickRestrictBefore);

                            return RotatedBox(
                              key: ValueKey(eventDate),
                              quarterTurns: 1,
                              child: Center(
                                child: GestureDetector(
                                  onTap: restrictDatePick
                                      ? null
                                      : () {
                                          context.maybePop();
                                          onDatePick(eventDate);
                                        },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: restrictDatePick
                                          ? context.colorScheme.outline
                                          : context
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
                            );
                          },
                        ).toList(),
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
    required DateTime datePickRestrictBefore,
  }) {
    showDialog(
      context: context,
      builder: (context) => EventDatepickerDialog._(
        eventDateTimes: eventDateTimes,
        onDatePick: onDatePick,
        datePickRestrictBefore: datePickRestrictBefore,
      ),
    );
  }
}
