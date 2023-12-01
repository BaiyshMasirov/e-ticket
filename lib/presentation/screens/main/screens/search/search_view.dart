import 'package:common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/presentation/screens/main/screens/search/bloc/search_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/search/widgets/search_widgets.dart';
import 'package:eticket/presentation/theme/styling.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
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
    final searchTextController = useTextEditingController();

    return BlocListener<SearchCubit, SearchState>(
      listener: (context, state) => state.map(
        initial: (_) => canLoadNextPage.value = true,
        loadingInProgress: (_) => canLoadNextPage.value = false,
        loadingSuccess: (_) => canLoadNextPage.value = _.isNextPageAvailable,
        loadingError: (_) => canLoadNextPage.value = false,
        loadingSuccessEmpty: (_) => canLoadNextPage.value = false,
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
        child: AppScaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Assets.logos.logo.image(width: 10.w),
            ),
            titleSpacing: 10.w,
            title: SearchBarZ(
              controller: searchTextController,
              onClear: () {
                context.read<SearchCubit>().clearText();
              },
              onTyped: (text) {
                context.read<SearchCubit>().textTyped(text);
              },
            ),
            actions: const [SearchFilterButton()],
          ),
          body: eventsState.maybeMap(
            loadingSuccessEmpty: (_) => EmptyContent(
              onTryAgain: () => context.read<SearchCubit>().refreshPage(),
            ),
            orElse: () => AppSliverScrollView(
              onRefresh: () async {
                context.read<SearchCubit>().refreshPage();
              },
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  sliver: SearchSearchPaginatedEventsView(
                    searchState: eventsState,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
