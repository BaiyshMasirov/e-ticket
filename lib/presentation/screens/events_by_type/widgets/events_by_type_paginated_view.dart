import 'package:eticket/presentation/screens/events_by_type/bloc/events_by_type_cubit.dart';
import 'package:eticket/presentation/screens/events_by_type/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsByTypePaginatedView extends StatelessWidget {
  final EventsByTypeState eventsByTypeState;

  const EventsByTypePaginatedView({
    required this.eventsByTypeState,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 20.w,
      ),
      itemCount: eventsByTypeState.map(
        initial: (_) => 0,
        loadingInProgress: (_) => _.events.length + 4,
        loadingSuccess: (_) => _.events.length,
        loadingError: (_) => _.events.length,
        loadingSuccessEmpty: (_) => 0,
      ),
      itemBuilder: (context, i) {
        return eventsByTypeState.map(
          loadingSuccessEmpty: (_) => const SizedBox.shrink(),
          initial: (_) => EventsByTypeItem(eventDto: _.events[i]),
          loadingInProgress: (_) {
            if (i < _.events.length) {
              return EventsByTypeItem(eventDto: _.events[i]);
            } else {
              return const EventsByTypeItemShimmer();
            }
          },
          loadingSuccess: (_) => EventsByTypeItem(eventDto: _.events[i]),
          loadingError: (_) {
            return EventsByTypeItem(eventDto: _.events[i]);
          },
        );
      },
    );
  }
}
