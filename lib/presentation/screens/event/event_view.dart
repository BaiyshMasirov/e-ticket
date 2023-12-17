import 'dart:ui';

import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventView extends StatelessWidget {
  final EventDto event;

  const EventView({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedDateTime = DateFormatters.buildEventDateTime(
      startDate: event.startDate,
      endDate: event.endDate,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                SizedBox(
                  height: 300.h,
                  width: context.screenSize.screenWidth,
                  child: Image.network(
                    event.image ?? '',
                    fit: BoxFit.fitHeight,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: context.colorScheme.surfaceTint,
                      height: 300.h,
                      width: 300.h,
                    ),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }

                      return Container(
                        color: context.colorScheme.surfaceTint,
                        height: 300.h,
                        width: 300.h,
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    child: Container(
                      height: 70.h,
                      decoration: BoxDecoration(
                        color:
                            context.colorScheme.surfaceVariant.withOpacity(0.6),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 6,
                          sigmaY: 1,
                          tileMode: TileMode.mirror,
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    child: Container(
                      height: 60.h,
                      color:
                          context.colorScheme.surfaceVariant.withOpacity(0.6),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 8,
                          sigmaY: 8,
                          tileMode: TileMode.mirror,
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        event.name ?? '-',
                        style: context.theme.textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${event.ageLimit}+'),
                          SizedBox(width: 20.w),
                          Text(formattedDateTime),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(event.description ?? '-'),
              ],
            ),
          ),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }
}
