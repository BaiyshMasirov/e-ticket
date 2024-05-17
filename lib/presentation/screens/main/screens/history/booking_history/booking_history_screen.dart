import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_history/bloc/bloc.dart';
import 'package:eticket/presentation/screens/main/screens/history/booking_history/booking_history_v.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookingHistoryCubit.initialize()..getNextPage(),
        ),
      ],
      child: AppScaffold(
        isLoadingFunc: (context) => context.select<BookingHistoryCubit, bool>(
          (c) => c.state.maybeMap(
            orElse: () => false,
            loading: (_) => true,
          ),
        ),
        title: LocaleKeys.history.tr(),
        body: const BookingHistoryV(),
      ),
    );
  }
}
