import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/event/event_screen.dart';
import 'package:eticket/presentation/screens/main/screens/search/bloc/search_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/search/widgets/search_widgets.dart';
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
    return SliverList.separated(
      itemCount: searchState.map(
        initial: (_) => 0,
        loadingInProgress: (_) => _.events.length + 4,
        loadingSuccess: (_) => _.events.length,
        loadingError: (_) => _.events.length + 1,
        loadingSuccessEmpty: (_) => 0,
      ),
      itemBuilder: (context, i) {
        return searchState.map(
          initial: (_) => const SizedBox.shrink(),
          loadingSuccessEmpty: (_) => const SizedBox.shrink(),
          loadingInProgress: (_) {
            if (i < _.events.length) {
              return SearchItemView(
                key: ValueKey(_.events[i].id),
                event: _.events[i],
                onTap: () => context.navigateTo(EventRoute(event: _.events[i])),
              );
            } else {
              return const SearchItemShimmer();
            }
          },
          loadingSuccess: (_) => SearchItemView(
            key: ValueKey(_.events[i].id),
            event: _.events[i],
            onTap: () => context.navigateTo(EventRoute(event: _.events[i])),
          ),
          loadingError: (_) {
            if (i < _.events.length) {
              return SearchItemView(
                key: ValueKey(_.events[i].id),
                event: _.events[i],
                onTap: () => context.navigateTo(EventRoute(event: _.events[i])),
              );
            } else {
              return DataFetchFailure(
                error: _.errorMessage,
                onTryLoadAgain: context.read<SearchCubit>().getNextEventsPage,
              );
            }
          },
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 8.h),
    );
  }
}
