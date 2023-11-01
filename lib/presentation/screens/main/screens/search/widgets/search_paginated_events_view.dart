import 'package:common/common.dart';
import 'package:eticket/presentation/screens/events_by_type/widgets/events_by_type_item.dart';
import 'package:eticket/presentation/screens/events_by_type/widgets/events_by_type_item_shimmer.dart';
import 'package:eticket/presentation/screens/main/screens/search/bloc/search_cubit.dart';
import 'package:eticket/presentation/widgets/alerts/alerts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSearchPaginatedEventsView extends StatelessWidget {
  final SearchState searchState;
  const SearchSearchPaginatedEventsView({
    required this.searchState,
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
      itemCount: searchState.map(
        initial: (_) => 0,
        loadingInProgress: (_) => _.events.length + 4,
        loadingSuccess: (_) => _.events.length,
        loadingError: (_) => _.events.length,
      ),
      itemBuilder: (context, i) {
        return searchState.map(
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

    // SliverList.separated(
    //   itemCount: searchState.map(
    //     initial: (_) => 0,
    //     loadingInProgress: (_) => _.events.length + 1,
    //     loadingSuccess: (_) => _.events.length,
    //     loadingError: (_) => _.events.length + 1,
    //   ),
    //   itemBuilder: (context, i) {
    //     return searchState.map(
    //       initial: (_) => ListTile(
    //         title: Text(_.events[i].name ?? '-'),
    //       ),
    //       loadingInProgress: (_) {
    //         if (i < _.events.length) {
    //           return ListTile(
    //             title: Text(_.events[i].name ?? '-'),
    //           );
    //         } else {
    //           return SizedBox(
    //             height: 40.h,
    //             child: const Center(
    //               child: CircularProgressIndicator(),
    //             ),
    //           );
    //         }
    //       },
    //       loadingSuccess: (_) => ListTile(
    //         title: Text(_.events[i].name ?? '-'),
    //       ),
    //       loadingError: (_) {
    //         if (i < _.events.length) {
    //           return ListTile(
    //             title: Text(_.events[i].name ?? '-'),
    //           );
    //         } else {
    //           return DataFetchFailure(
    //             error: _.errorMessage,
    //             onTryLoadAgain: context.read<SearchCubit>().getNextEventsPage,
    //           );
    //         }
    //       },
    //     );
    //   },
    //   separatorBuilder: (context, index) => SizedBox(height: 1.h),
    // );
  }
}
