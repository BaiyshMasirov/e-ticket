import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_history/bloc/bloc.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_history/widgets/widgets.dart';
import 'package:eticket/presentation/screens/main/screens/history/widgets/widgets.dart';
import 'package:eticket/presentation/theme/styling.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingHistoryV extends HookWidget {
  const BookingHistoryV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isNextPageAvailableS = useState(false);

    final bookingsState = context.watch<BookingHistoryCubit>().state;

    return BlocListener<BookingHistoryCubit, BookingHistoryState>(
      listener: (_, s) => s.map(
        initial: (_) => isNextPageAvailableS.value = true,
        loading: (_) => isNextPageAvailableS.value = false,
        success: (_) => isNextPageAvailableS.value = _.isNextPageAvailable,
        error: (_) => isNextPageAvailableS.value = false,
        empty: (_) => isNextPageAvailableS.value = false,
      ),
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          final metrics = notification.metrics;
          final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;

          if (isNextPageAvailableS.value && metrics.pixels >= limit) {
            isNextPageAvailableS.value = false;
            context.read<BookingHistoryCubit>().getNextPage();
          }

          return false;
        },
        child: Column(
          children: [
            Expanded(
              child: bookingsState.maybeMap(
                orElse: () =>
                    _BookingHistoryContentV(bookingState: bookingsState),
                empty: (_) => EmptyContent(
                  onTryAgain: () =>
                      context.read<BookingHistoryCubit>().refresh(),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // final bookingsState = context.watch<HistoryCubit>().state;
    // return Padding(
    //   padding: EdgeInsets.symmetric(
    //     horizontal: kDefaultPadding,
    //     vertical: 15.h,
    //   ),
    //   child: bookingsState.maybeWhen(
    //     orElse: () => const SizedBox.shrink(),
    //     loadError: (
    //       booking,
    //       _,
    //       errorMessage,
    //     ) =>
    //         Center(
    //       child: DataFetchFailure(
    //         error: errorMessage,
    //         onTryLoadAgain: () =>
    //             context.read<HistoryCubit>().getUserBookings(),
    //       ),
    //     ),
    //     loadSuccess: (bookingsList, __, _) => AppSliverScrollView(
    //       onRefresh: () => context.read<HistoryCubit>().refreshPage(),
    //       slivers: [
    //         SliverList.separated(
    //           itemCount: bookingsList.length,
    //           itemBuilder: (context, i) {
    //             final booking = bookingsList[i];
    //
    //             return HistoryItem(
    //               booking: booking,
    //               onTapped: () => context.navigateTo(
    //                 BookingTicketsRoute(tiketId: booking.id),
    //               ),
    //             );
    //           },
    //           separatorBuilder: (context, index) => SizedBox(height: 10.h),
    //         ),
    //         SliverToBoxAdapter(
    //           child: SizedBox(
    //             height: 50.h,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}

class _BookingHistoryContentV extends HookWidget {
  final BookingHistoryState bookingState;

  const _BookingHistoryContentV({
    required this.bookingState,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: bookingState.isFreshData == false,
          child: const HistoryCachedTitleV(),
        ),
        Expanded(
          child: AppSliverScrollView(
            onRefresh: () => context.read<BookingHistoryCubit>().refresh(),
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(kDefaultPadding),
                sliver: SliverList.separated(
                  itemCount: bookingState.map(
                    initial: (_) => 0,
                    loading: (_) => _.bookings.length + 4,
                    success: (_) => _.bookings.length,
                    error: (_) => _.bookings.length + 1,
                    empty: (_) => 0,
                  ),
                  itemBuilder: (_, i) => bookingState.map(
                    initial: (_) => const SizedBox.shrink(),
                    empty: (_) => const SizedBox.shrink(),
                    loading: (_) {
                      if (i < _.bookings.length) {
                        return BookingHistoryItemV(
                          key: ValueKey(_.bookings[i].entity.id),
                          booking: _.bookings[i].entity,
                          onTapped: () =>
                              context.navigateTo(BookingTicketsRoute(
                            booking: _.bookings[i],
                          )),
                        );
                      } else {
                        return ShimmerV(height: 100.h);
                      }
                    },
                    success: (_) => BookingHistoryItemV(
                      key: ValueKey(_.bookings[i].entity.id),
                      booking: _.bookings[i].entity,
                      onTapped: () => context.navigateTo(BookingTicketsRoute(
                        booking: _.bookings[i],
                      )),
                    ),
                    error: (_) {
                      if (i < _.bookings.length) {
                        return BookingHistoryItemV(
                          key: ValueKey(_.bookings[i].entity.id),
                          booking: _.bookings[i].entity,
                          onTapped: () =>
                              context.navigateTo(BookingTicketsRoute(
                            booking: _.bookings[i],
                          )),
                        );
                      } else {
                        return DataFetchFailure(
                          error: _.errorMessage,
                          onTryLoadAgain:
                              context.read<BookingHistoryCubit>().getNextPage,
                        );
                      }
                    },
                  ),
                  separatorBuilder: (_, __) => SizedBox(height: 8.h),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
