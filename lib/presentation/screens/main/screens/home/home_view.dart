import 'dart:ui';

import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/colors.gen.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_bloc.dart';
import 'package:eticket/presentation/screens/main/screens/home/widgets/home_sliver_event_list.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends HookWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final canLoadNextPage = useState(false);
    final taxState = context.watch<HomeCubit>().state;

    final scrollController = useMemoized(
      () => ScrollController(),
    );

    final generatesSlivers = List.generate(
      10,
      (index) => HomeSliverEventList(),
    );

    return AppSliverScrollView(
      scrollController: scrollController,
      onRefresh: () => Future.delayed(const Duration(seconds: 2)),
      headerSliver: const SliverAppBar(
        stretch: false,
        pinned: true,
        floating: true,
        snap: false,
        title: Text('Top Charts'),
      ),
      slivers: [
        SliverPadding(padding: EdgeInsets.symmetric(vertical: kDefaultPadding)),
        for (int i = 0; i < generatesSlivers.length; i++) ...[
          generatesSlivers[i],
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          ),
        ],
        SliverPadding(padding: EdgeInsets.symmetric(vertical: kDefaultPadding)),
      ],
    );
  }
}
