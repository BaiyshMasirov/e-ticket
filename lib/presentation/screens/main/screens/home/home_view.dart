import 'dart:ui';

import 'package:common/common.dart';
import 'package:eticket/generated/colors.gen.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_bloc.dart';
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

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          stretch: false,
          pinned: true,
          floating: true,
          snap: false,
          title: const Text('Top Charts'),
          flexibleSpace: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
                tileMode: TileMode.mirror,
              ),
              child: Center(),
            ),
          ),
        ),
        CupertinoSliverRefreshControl(
          onRefresh: () async => await Future.delayed(
            const Duration(seconds: 2),
          ),
        ),
        SliverList.separated(
          itemBuilder: (context, index) => CupertinoListTile(
            title: Text(
              'sdf',
              style: TextStyle(color: Colors.white),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 10.h,
          ),
          itemCount: 20,
        ),
      ],
    );
  }
}
