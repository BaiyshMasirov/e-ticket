import 'package:common/common.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/domain/models/event/events_filter.dart';
import 'package:eticket/presentation/screens/main/screens/search/bloc/search_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/search/widgets/events_filter_bottom_sheet.dart';
import 'package:eticket/presentation/screens/main/screens/search/widgets/search_widgets.dart';
import 'package:eticket/presentation/widgets/app_sliver_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends HookWidget {
  const SearchView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final canLoadNextPage = useState(false);
    final eventsState = context.watch<SearchCubit>().state;

    return BlocListener<SearchCubit, SearchState>(
      listener: (context, state) => state.map(
        initial: (_) => canLoadNextPage.value = true,
        loadingInProgress: (_) => canLoadNextPage.value = false,
        loadingSuccess: (_) => canLoadNextPage.value = _.isNextPageAvailable,
        loadingError: (_) => canLoadNextPage.value = false,
      ),
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          final metrics = notification.metrics;
          final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;

          if (canLoadNextPage.value && metrics.pixels >= limit) {
            canLoadNextPage.value = false;
            context.read<SearchCubit>().getNextEventsPage();
          }

          return false;
        },
        child: AppSliverScrollView(
          onRefresh: () async {
            context.read<SearchCubit>().refreshPage();
          },
          headerSliver: SliverAppBar(
            actions: [
              IconButton(
                onPressed: () async {
                  final filter = context.read<SearchCubit>().state.eventsFilter;

                  EventsFilterBottomSheet.showBottomSheet(
                    context: context,
                    initialEventType: filter.type,
                    initialEventStatus: filter.status,
                    initialDate: filter.date,
                    onClearFilter: context.read<SearchCubit>().clearFilter,
                    onSelect: (date, paymentType, transactionStatus) {
                      final filter = EventsFilter(
                        type: paymentType,
                        date: date,
                        status: transactionStatus,
                      );

                      context.read<SearchCubit>().refreshPage(filter: filter);
                    },
                  );
                },
                icon: Stack(
                  children: [
                    const Icon(
                      Icons.format_list_bulleted_rounded,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Icon(
                        Icons.brightness_1,
                        size: 10.0,
                        color: context.colorScheme.onError,
                      ),
                    )
                  ],
                ),
              ),
            ],
            stretch: false,
            pinned: true,
            floating: true,
            snap: false,
            title: const Text('Search'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.h),
              child: Container(
                color: context.colorScheme.secondaryContainer,
                margin: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
          slivers: [
            eventsState.maybeWhen(
              orElse: () =>
                  SearchSearchPaginatedEventsView(searchState: eventsState),
              loadingInProgress: (events, eventsFilter, text) => events.isEmpty
                  ? const SliverToBoxAdapter(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SearchSearchPaginatedEventsView(searchState: eventsState),
              loadingSuccess: (transactions, _, __, ___) => transactions.isEmpty
                  ? const SliverToBoxAdapter(
                      child: Center(
                        child: Text('Ивентов нет'),
                      ),
                    )
                  : SearchSearchPaginatedEventsView(searchState: eventsState),
            ),
          ],
        ),
      ),
    );
  }
}
