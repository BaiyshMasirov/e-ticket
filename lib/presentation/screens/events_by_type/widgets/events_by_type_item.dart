import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsByTypeItem extends StatelessWidget {
  final EventDto eventDto;

  const EventsByTypeItem({
    required this.eventDto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomTapButton(
      onTap: () {
        context.navigateTo(EventRoute(event: eventDto));
      },
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.network(
                eventDto.image ?? '',
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }

                  return Container(
                    color: context.colorScheme.onError,
                  );
                },
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: context.colorScheme.onError,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            eventDto.name ?? '',
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            eventDto.locationName ?? '',
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
