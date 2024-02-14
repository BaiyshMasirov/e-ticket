import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/models/ticket/ticket_dto.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/payment/payment_methods/payment_methods_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PaymentMethodsScreen extends StatelessWidget {
  final double preciseCost;
  final String bookingId;
  final List<TicketDto> tickets;

  const PaymentMethodsScreen({
    required this.preciseCost,
    required this.bookingId,
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: LocaleKeys.payment_methods.tr(),
      body: PaymentMethodsView(
        preciseCost: preciseCost,
        bookingId: bookingId,
        tickets: tickets,
      ),
    );
  }
}
