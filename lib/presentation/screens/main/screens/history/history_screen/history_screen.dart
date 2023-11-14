import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_screen/bloc/history_cubit.dart';
import 'package:eticket/presentation/screens/main/screens/history/history_screen/history_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HistoryCubit.initialize()..getUserBookings(),
        ),
      ],
      child: AppScaffold(
          title: LocaleKeys.history.tr(), body: const HistoryView()),
    );
  }
}
