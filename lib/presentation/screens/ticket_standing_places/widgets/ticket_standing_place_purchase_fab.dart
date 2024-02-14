import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_place_purchase_cubit.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';

class TicketStandingPlacePurchaseFab extends StatelessWidget {
  const TicketStandingPlacePurchaseFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TicketStandingPlacePurchaseCubit>().state;

    if (state.chosenTickets.isEmpty) return const SizedBox.shrink();

    final isTicketsChosen = state.chosenTickets.any((item) => item.count > 0);

    return PrimaryButton(
      horizontalPadding: kDefaultPadding,
      title: LocaleKeys.confirm.tr(),
      onPressed: isTicketsChosen ? () {} : null,
    );
  }
}
