import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

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
                IconButton(
                  onPressed: () {
                    context.popRoute();
                  },
                  icon: const Icon(CupertinoIcons.clear_circled),
                ),
              ],
            ),
            SizedBox(
              height: 120.h,
              child: RotatedBox(
                quarterTurns: -1,
                child: ListWheelScrollView(
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 90.w,
                  diameterRatio: 2,
                  children: eventDateTimes
                      .map((eventDate) => RotatedBox(
                            quarterTurns: 1,
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  context.popRoute();
                                  onDatePick(eventDate);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.onError,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  width: 70.w,
                                  height: 80.h,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          DateFormat.MMM().format(eventDate),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                        Text(
                                          DateFormat('dd').format(eventDate),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        Divider(
                                          color: context
                                              .colorScheme.inverseSurface,
                                        ),
                                        Text(eventDate.year.toString()),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ))
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
