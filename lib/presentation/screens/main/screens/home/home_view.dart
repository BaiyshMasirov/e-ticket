import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_bloc.dart';
import 'package:eticket/presentation/screens/main/screens/home/widgets/home_widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:collection/collection.dart';

class HomeView extends HookWidget {
  final List<KeyValueMapDto> eventTypes;

  const HomeView({
    required this.eventTypes,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeBlocs =
        useMemoized(() => eventTypes.map(HomeCubit.initialize).toList());
    final eventsList = useMemoized(
      () => eventTypes
          .mapIndexed((i, e) => HomeSliverEventList(
                eventType: e,
                homeCubit: homeBlocs[i],
              ))
          .toList(),
    );

    return AppSliverScrollView(
      onRefresh: () async {
        homeBlocs.forEach((element) {
          element.clearFilter();
        });
      },
      headerSliver: const SliverAppBar(
        stretch: false,
        pinned: true,
        floating: true,
        snap: false,
        title: Text('Top Charts'),
      ),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        ),
        ...eventsList,
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        ),
      ],
    );
  }
}
