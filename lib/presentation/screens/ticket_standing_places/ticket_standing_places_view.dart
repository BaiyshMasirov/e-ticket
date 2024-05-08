import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_hold_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_places_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:collection/collection.dart';

class TicketStandingPlacesView extends StatelessWidget {
  const TicketStandingPlacesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TicketStandingPlacesCubit, TicketStandingPlacesState>(
          listener: (ctx, state) => state.maybeWhen(
            orElse: () => context
                .read<TicketStandingPlaceHoldCubit>()
                .clearChosenTickets(),
            success: (tickets) => context
                .read<TicketStandingPlaceHoldCubit>()
                .initializeTickets(tickets: tickets),
          ),
        ),
        BlocListener<TicketStandingPlaceHoldCubit,
            TicketStandingPlaceHoldState>(
          listener: (ctx, state) => state.maybeWhen(
            orElse: () {},
            holdingSuccess: (_, bookingId, totalSum) => context.replaceRoute(
              PaymentMethodsRoute(bookingId: bookingId, preciseCost: totalSum),
            ),
          ),
        ),
      ],
      child: BlocBuilder<TicketStandingPlacesCubit, TicketStandingPlacesState>(
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

                    return TicketStandingPlaceItem(
                      ticket: ticket,
                      onDecreasePressed: () {
                        context
                            .read<TicketStandingPlaceHoldCubit>()
                            .decreaseTicketAmount(ticket.type, ticket.availableCount);
                      },
                      onIncreasePressed: () {
                        context
                            .read<TicketStandingPlaceHoldCubit>()
                            .increaseTicketAmount(ticket.type, ticket.availableCount);
                      },
                      key: ValueKey(ticket.type),
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
      ),
    );
  }
}
