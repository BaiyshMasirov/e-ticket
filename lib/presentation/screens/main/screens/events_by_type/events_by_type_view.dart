import 'package:common/common.dart';
import 'package:eticket/presentation/screens/main/screens/events_by_type/bloc/events_by_type_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/events_by_type/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EventsByTypeView extends HookWidget {
  const EventsByTypeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final canLoadNextPage = useState(false);
    final eventsState = context.watch<EventsByTypeCubit>().state;

    return BlocListener<EventsByTypeCubit, EventsByTypeState>(
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
            context.read<EventsByTypeCubit>().getNextEventsPage();
          }

          return false;
        },
        child: AppSliverScrollView(
          onRefresh: () async {
            context.read<EventsByTypeCubit>().refreshPage();
          },
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding / 2,
              ),
              sliver: eventsState.maybeWhen(
                orElse: () => EventsByTypePaginatedView(
                  eventsByTypeState: eventsState,
                ),
                loadingInProgress: (events) =>
                    EventsByTypePaginatedView(eventsByTypeState: eventsState),
                loadingSuccess: (events, _) => events.isEmpty
                    ? const SliverToBoxAdapter(
                        child: Center(
                          child: Text('Ивентов нет'),
                        ),
                      )
                    : EventsByTypePaginatedView(eventsByTypeState: eventsState),
              ),
            ),
            eventsState.maybeWhen(
              loadingError: (events, errorMessage) => DataFetchFailure(
                error: errorMessage,
                onTryLoadAgain:
                    context.read<EventsByTypeCubit>().getNextEventsPage,
              ),
              orElse: () {
                return const SliverToBoxAdapter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
