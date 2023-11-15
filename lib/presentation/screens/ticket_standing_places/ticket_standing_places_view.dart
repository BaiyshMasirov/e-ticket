import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_hold_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_places_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketStandingPlacesView extends StatelessWidget {
  const TicketStandingPlacesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TicketStandingPlacesCubit, TicketStandingPlacesState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => context
            .read<TicketStandingPlaceHoldCubit>()
            .clearChosenTickets(),
        success: (tickets) => context
            .read<TicketStandingPlaceHoldCubit>()
            .initializeTickets(tickets: tickets),
      ),
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        success: (tickets) => Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: AppSliverScrollView(
            onRefresh: () =>
                context.read<TicketStandingPlacesCubit>().getTickets(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: kDefaultPadding),
              ),
              SliverList.separated(
                itemCount: tickets.length,
                itemBuilder: (context, i) {
                  final ticket = tickets[i];

                  return TicketStandingPlacesContainerView(
                    ticket: ticket,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 50.h),
              )
            ],
          ),
        ),
        error: (error) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DataFetchFailure(
              onTryLoadAgain: () =>
                  context.read<TicketStandingPlacesCubit>().getTickets(),
              error: error?.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
