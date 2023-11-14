import 'package:common/common.dart';
import 'package:eticket/data/models/history/history_dto.dart';
import 'package:eticket/data/models/ticket/ticket_type_count_dto.dart';
import 'package:eticket/presentation/screens/main/screens/history/bloc/history_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/bloc/history_state.dart';
import 'package:eticket/presentation/screens/main/screens/history/widgets/history_container_view.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/ticket_standing_places_container_view.dart';
import 'package:eticket/presentation/theme/styling.dart';
import 'package:eticket/presentation/widgets/app_sliver_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryView extends HookWidget {
  const HistoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookingsState = context.watch<HistoryCubit>().state;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: bookingsState.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loadSuccess: (bookingsList, __, _) => AppSliverScrollView(
            onRefresh: () => context.read<HistoryCubit>().refreshPage(),
            slivers: [
              SliverList.separated(
                itemCount: bookingsList.length,
                itemBuilder: (context, i) {
                  final booking = bookingsList[i];

                  return HistoryContainerView(
                    booking: booking,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 50.h),
              )
            ],
          ),
        ));
  }
}
