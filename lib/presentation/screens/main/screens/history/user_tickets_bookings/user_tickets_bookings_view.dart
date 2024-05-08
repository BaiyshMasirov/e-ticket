import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/bloc/user_tickets_bookings_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/widgets/user_ticket_container_view.dart';
import 'package:eticket/presentation/theme/styling.dart';
import 'package:eticket/presentation/widgets/alerts/data_fetch_failure.dart';
import 'package:eticket/presentation/widgets/app_sliver_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: 15.h,
        ),
        child: bookingsState.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          error: (
            errorMessage,
          ) =>
              Center(
            child: DataFetchFailure(
              error: errorMessage,
              onTryLoadAgain: () => context
                  .read<UserTicketsBookingsCubit>()
                  .getUserTicketsId(id: tiketId),
            ),
          ),
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
                    bookingTicket: booking,
                    arrayBookingTicket: bookingsList,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 50.h),
              )
            ],
          ),
        ));
  }
}
