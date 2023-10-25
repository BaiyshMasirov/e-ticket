import 'package:common/common.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_bloc.dart';
import 'package:eticket/presentation/screens/main/screens/home/widgets/home_event_item_view.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _boxHeight = 200.h;

class HomePaginatedEventsView extends StatelessWidget {
  final HomeState eventState;

  const HomePaginatedEventsView({
    required this.eventState,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: eventState.maybeMap(
        orElse: () => _boxHeight,
        loadingError: (value) => value.events.isEmpty ? 80.h : _boxHeight,
      ),
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
          initial: (_) => HomeEventItemView(eventDto: _.events[i]),
          loadingInProgress: (_) {
            if (i < _.events.length) {
              return HomeEventItemView(
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
          loadingSuccess: (_) => HomeEventItemView(eventDto: _.events[i]),
          loadingError: (_) {
            if (i < _.events.length) {
              return HomeEventItemView(
                eventDto: _.events[i],
              );
            } else {
              return DataFetchFailure(
                axis: Axis.vertical,
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
