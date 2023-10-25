import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/models/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeEventItemView extends StatelessWidget {
  final EventDto eventDto;

  const HomeEventItemView({
    required this.eventDto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.w,
      child: ZoomTapButton(
        onTap: () {
          context.navigateTo(EventRoute(event: eventDto));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: context.colorScheme.tertiaryContainer,
                  image: DecorationImage(
                    image: NetworkImage(eventDto.image ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              eventDto.name ?? '-',
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.labelLarge,
              maxLines: 1,
            ),
            SizedBox(height: 5.h),
            Text(
              eventDto.locationName ?? '-',
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.bodyMedium,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
