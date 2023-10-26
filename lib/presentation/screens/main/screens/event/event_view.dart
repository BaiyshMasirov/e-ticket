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
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(event.image ?? ''),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 150.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, context.colorScheme.surface],
                      tileMode: TileMode.mirror,
                      stops: const [0.1, 0.7],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
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
                          Text(
                            DateFormatters.datetimeToSlashedNullable(
                                  event.startDate,
                                ) ??
                                '-',
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            DateFormatters.datetimeToSlashedNullable(
                                  event.endDate,
                                ) ??
                                '-',
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(event.description ?? '-', textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
