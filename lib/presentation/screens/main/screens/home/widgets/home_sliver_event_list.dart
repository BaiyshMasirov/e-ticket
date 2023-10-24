import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/data/models/dictionaries/key_value_map_dto.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/alerts/alerts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliverEventList extends StatelessWidget {
  final KeyValueMapDto _eventType;

  const HomeSliverEventList({
    required KeyValueMapDto eventType,
    Key? key,
  })  : _eventType = eventType,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocProvider<HomeCubit>(
        create: (BuildContext context) =>
            HomeCubit.initialize(_eventType)..getNextEventsPage(),
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(eventType.value),
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
              orElse: () => _PaginatedEventView(eventState: eventState),
              loadingInProgress: (events) => events.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : _PaginatedEventView(eventState: eventState),
              loadingSuccess: (events, _) => events.isEmpty
                  ? const Center(child: Text('Ивентов нет'))
                  : _PaginatedEventView(eventState: eventState),
            ),
          ),
        ),
      ],
    );
  }
}

class _PaginatedEventView extends StatelessWidget {
  final HomeState eventState;

  const _PaginatedEventView({
    required this.eventState,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        scrollDirection: Axis.horizontal,
        itemCount: eventState.map(
          initial: (_) => 0,
          loadingInProgress: (_) => _.events.length + 1,
          loadingSuccess: (_) => _.events.length,
          loadingError: (_) => _.events.length + 1,
        ),
        itemBuilder: (ctx, i) => eventState.map(
          initial: (_) => _EventItemView(eventDto: _.events[i]),
          loadingInProgress: (_) {
            if (i < _.events.length) {
              return _EventItemView(
                eventDto: _.events[i],
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
          loadingSuccess: (_) => _EventItemView(eventDto: _.events[i]),
          loadingError: (_) {
            if (i < _.events.length) {
              return _EventItemView(
                eventDto: _.events[i],
              );
            } else {
              return DataFetchFailure(
                error: _.errorMessage,
                onTryLoadAgain: context.read<HomeCubit>().getNextEventsPage,
              );
            }
          },
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: kDefaultPadding,
        ),
      ),
    );
  }
}

class _EventItemView extends StatelessWidget {
  final EventDto eventDto;

  const _EventItemView({
    required this.eventDto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
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
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            eventDto.name ?? '-',
            maxLines: 1,
          ),
          SizedBox(height: 5.h),
          Text(
            eventDto.locationName ?? '-',
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
