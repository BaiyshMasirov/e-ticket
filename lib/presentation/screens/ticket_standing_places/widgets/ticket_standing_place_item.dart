import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_hold_cubit.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:eticket/data/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketStandingPlaceItem extends StatelessWidget {
  final TicketTypeCountDto ticket;
  final Function() onDecreasePressed;
  final Function() onIncreasePressed;

  const TicketStandingPlaceItem({
    required this.ticket,
    required this.onDecreasePressed,
    required this.onIncreasePressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageWidth = context.screenSize.screenWidth / 2.1;

    return Container(
      padding: EdgeInsets.all(kDefaultPadding.w / 2),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Assets.images.blankTicket.image(
                width: imageWidth,
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                top: 0,
                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          ticket.ticketType.value,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.theme.textTheme.labelLarge?.copyWith(
                            color: context.colorScheme.onErrorContainer,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TicketStandingPlaceSubtitle(
                              title: LocaleKeys.total.tr(),
                              count: ticket.count,
                            ),
                            TicketStandingPlaceSubtitle(
                              title: LocaleKeys.available.tr(),
                              count: ticket.availableCount,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(
                      color: context.colorScheme.secondary,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${LocaleKeys.price.tr()}:'),
                      SizedBox(width: 5.w),
                      Text(ticket.price.toString()),
                    ],
                  ),
                ),
                TicketStandingPlaceCounter(
                  amount: context
                      .select<TicketStandingPlaceHoldCubit, int>(
                        (value) =>
                            value.state.chosenTickets
                                .firstWhereOrNull(
                                  (item) => item.type == ticket.type,
                                )
                                ?.count ??
                            0,
                      )
                      .toString(),
                  onDecreasePressed: onDecreasePressed,
                  onIncreasePressed: onIncreasePressed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
