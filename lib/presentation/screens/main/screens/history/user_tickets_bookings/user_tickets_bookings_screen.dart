import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/auth/register/bloc/register_state.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/bloc/user_tickets_bookings_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/user_tickets_bookings_view.dart';
import 'package:eticket/presentation/screens/ticket_standing_places/bloc/ticket_standing_places_state.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserTicketsBookingsScreen extends StatelessWidget {
  final String tiketId;
  const UserTicketsBookingsScreen({
    required this.tiketId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserTicketsBookingsCubit.initialize()
            ..getUserTicketsId(id: tiketId),
        ),
      ],
      child: AppScaffold(
          title: LocaleKeys.tickets.tr(),
          isLoadingFunc: (context) =>
              context.select<UserTicketsBookingsCubit, bool>(
                (value) => value.state is RegisterLoading,
              ),
          body: UserTicketsBookingsView(
            tiketId: tiketId,
          )),
    );
  }
}
