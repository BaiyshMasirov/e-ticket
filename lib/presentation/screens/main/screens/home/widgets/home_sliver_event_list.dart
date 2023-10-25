import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_bloc.dart';
import 'package:eticket/presentation/screens/main/screens/home/widgets/home_paginated_events_view.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliverEventList extends StatelessWidget {
  final KeyValueMapDto _eventType;
  final HomeCubit _homeCubit;

  const HomeSliverEventList({
    required KeyValueMapDto eventType,
    required HomeCubit homeCubit,
    Key? key,
  })  : _eventType = eventType,
        _homeCubit = homeCubit,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocProvider.value(
        value: _homeCubit..getNextEventsPage(),
        child: HomeEventsView(eventType: _eventType),
      ),
    );
  }
}

class HomeEventsView extends HookWidget {
  final KeyValueMapDto eventType;

  const HomeEventsView({
    required this.eventType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final canLoadNextPage = useState(false);
    final eventState = context.watch<HomeCubit>().state;

    return eventState is HomeLoadingSuccess && eventState.events.isEmpty
        ? const SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  eventType.value,
                  style: context.theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 10.h),
              BlocListener<HomeCubit, HomeState>(
                listener: (context, state) => state.map(
                  initial: (_) => canLoadNextPage.value = true,
                  loadingInProgress: (_) => canLoadNextPage.value = false,
                  loadingSuccess: (_) =>
                      canLoadNextPage.value = _.isNextPageAvailable,
                  loadingError: (_) => canLoadNextPage.value = false,
                ),
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    final metrics = notification.metrics;
                    final limit =
                        metrics.maxScrollExtent - metrics.viewportDimension / 3;

                    if (canLoadNextPage.value && metrics.pixels >= limit) {
                      canLoadNextPage.value = false;
                      context.read<HomeCubit>().getNextEventsPage();
                    }

                    return false;
                  },
                  child: eventState.maybeWhen(
                    orElse: () =>
                        HomePaginatedEventsView(eventState: eventState),
                    loadingInProgress: (events) => events.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : HomePaginatedEventsView(eventState: eventState),
                    loadingSuccess: (events, _) => events.isEmpty
                        ? const Center(child: Text('Ивентов нет'))
                        : HomePaginatedEventsView(eventState: eventState),
                  ),
                ),
              ),
            ],
          );
  }
}
