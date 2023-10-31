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
    final formattedDateTime = _buildEventDateTime();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                Image.network(
                  event.image ?? '',
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: context.colorScheme.onError,
                    height: 300.h,
                  ),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }

                    return Container(
                      color: context.colorScheme.onError,
                    );
                  },
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          context.colorScheme.surface.withOpacity(0.8),
                          Colors.transparent
                        ],
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
                  child: Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          context.colorScheme.surface
                        ],
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
                            Text(formattedDateTime),
                          ],
                        )
                      ],
                    ),
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

  String _buildEventDateTime() {
    if (event.startDate == event.endDate) {
      return DateFormatters.datetimeToSlashed(event.startDate);
    }

    return '${DateFormatters.datetimeToSlashed(event.startDate)} - ${DateFormatters.datetimeToSlashed(event.endDate)}';
  }
}
