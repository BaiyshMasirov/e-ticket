import 'package:common/common.dart';
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
    return SliverList.separated(
      itemCount: searchState.map(
        initial: (_) => 0,
        loadingInProgress: (_) => _.events.length + 1,
        loadingSuccess: (_) => _.events.length,
        loadingError: (_) => _.events.length + 1,
      ),
      itemBuilder: (context, i) {
        return searchState.map(
          initial: (_) => ListTile(
            title: Text(_.events[i].name ?? '-'),
          ),
          loadingInProgress: (_) {
            if (i < _.events.length) {
              return ListTile(
                title: Text(_.events[i].name ?? '-'),
              );
            } else {
              return SizedBox(
                height: 40.h,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
          loadingSuccess: (_) => ListTile(
            title: Text(_.events[i].name ?? '-'),
          ),
          loadingError: (_) {
            if (i < _.events.length) {
              return ListTile(
                title: Text(_.events[i].name ?? '-'),
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
      separatorBuilder: (context, index) => SizedBox(height: 1.h),
    );
  }
}
