import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TicketSeatPlacePurchaseFab extends StatelessWidget {
  const TicketSeatPlacePurchaseFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TicketSeatHoldCubit>().state;

    return PrimaryButton(
      horizontalPadding: kDefaultPadding,
      title: LocaleKeys.confirm.tr(),
      onPressed: state.tickets.isNotEmpty
          ? () async {
              ButtonSheet.showBottomSheet(
                context: context,
                onCancel: context.popRoute,
                tickets: state.tickets,
                onConfirm: () {
                  context.popRoute();
                  context.read<TicketSeatHoldCubit>().holdTickets();
                },
              );
            }
          : null,
    );
  }
}
