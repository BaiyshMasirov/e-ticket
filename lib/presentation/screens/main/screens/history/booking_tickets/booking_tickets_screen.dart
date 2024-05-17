import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_tickets/booking_tickets_v.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookingTicketsScreen extends StatelessWidget {
  final Fresh<BookingModel> booking;

  const BookingTicketsScreen({
    required this.booking,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: LocaleKeys.tickets.tr(),
      body: BookingTicketsV(
        booking: booking,
      ),
    );
  }
}
