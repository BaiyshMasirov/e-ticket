import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/ticket_seat_places/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TicketSeatPlacePurchaseFab extends StatelessWidget {
  const TicketSeatPlacePurchaseFab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TicketSeatHoldCubit>().state;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: state.tickets.isEmpty
              ? const SizedBox()
              : Container(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    top: kDefaultPadding / 2,
                    bottom: kDefaultPadding,
                  ),
                  width: double.infinity,
                  color: context.colorScheme.background.withOpacity(0.8),
                  child: Text(
                    state.getTicketsInfo().map((e) => e).join('\n'),
                    style: TextStyle(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
        ),
        PrimaryButton(
          horizontalPadding: kDefaultPadding,
          title: '${LocaleKeys.confirm.tr()} '
              '(${state.tickets.fold(0.0, (prev, curr) => prev + curr.price)})',
          onPressed: state.tickets.isNotEmpty
              ? () async {
                  HoldTicketDialog.showHoldTicketDialog(
                    context: context,
                    onCancel: context.popRoute,
                    onConfirm: () {
                      context.popRoute();
                      context.read<TicketSeatHoldCubit>().holdTickets();
                    },
                  );
                }
              : null,
        ),
      ],
    );
  }
}
