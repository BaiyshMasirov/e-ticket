import 'package:common/common.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_screen/bloc/history_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_screen/widgets/history_container_view.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/bloc/user_tickets_bookings_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/widgets/user_ticket_container_view.dart';
import 'package:eticket/presentation/theme/styling.dart';
import 'package:eticket/presentation/widgets/app_sliver_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTicketsBookingsView extends HookWidget {
  final String tiketId;
  const UserTicketsBookingsView({
    required this.tiketId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookingsState = context.watch<UserTicketsBookingsCubit>().state;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: bookingsState.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (
            bookingsList,
          ) =>
              AppSliverScrollView(
            onRefresh: () => context
                .read<UserTicketsBookingsCubit>()
                .refreshPage(id: tiketId),
            slivers: [
              SliverList.separated(
                itemCount: bookingsList.length,
                itemBuilder: (context, i) {
                  final booking = bookingsList[i];

                  return UserTicketContainerView(
                    ticket: booking,
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
