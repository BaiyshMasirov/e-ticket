import 'package:common/common.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_screen/bloc/history_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_screen/widgets/history_container_view.dart';
import 'package:eticket/presentation/theme/styling.dart';
import 'package:eticket/presentation/widgets/alerts/data_fetch_failure.dart';
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
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: 15.h,
      ),
      child: bookingsState.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loadError: (
          booking,
          _,
          errorMessage,
        ) =>
            Center(
          child: DataFetchFailure(
            error: errorMessage,
            onTryLoadAgain: () =>
                context.read<HistoryCubit>().getUserBookings(),
          ),
        ),
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
              separatorBuilder: (context, index) => SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 50.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
