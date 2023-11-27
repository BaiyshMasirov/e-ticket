import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_hold_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketStandingPlacePurchaseFab extends StatelessWidget {
  const TicketStandingPlacePurchaseFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TicketStandingPlaceHoldCubit>().state;

    if (state.chosenTickets.isEmpty) return const SizedBox.shrink();

    final isTicketsChosen = state.chosenTickets.any((item) => item.count > 0);

    return PrimaryButton(
      horizontalPadding: kDefaultPadding,
      title: LocaleKeys.confirm.tr(),
      onPressed: isTicketsChosen
          ? () async {
              HoldTicketDialog.showHoldTicketDialog(
                context: context,
                onCancel: context.popRoute,
                onConfirm: () {
                  context.popRoute();
                  context.read<TicketStandingPlaceHoldCubit>().holdTickets();
                },
              );
            }
          : null,
    );
  }
}
