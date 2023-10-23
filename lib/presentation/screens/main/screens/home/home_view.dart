import 'dart:ui';

import 'package:common/common.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/colors.gen.dart';
import 'package:eticket/presentation/screens/main/screens/home/bloc/home_bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
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
        ),
        CupertinoSliverRefreshControl(
          onRefresh: () async => await Future.delayed(
            const Duration(seconds: 2),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('EVENT 1'),
              SizedBox(height: 10.h),
              SizedBox(
                height: 200.h,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index) => SizedBox(
                    width: 130.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            color: context.colorScheme.tertiaryContainer,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        const Text('Title'),
                        SizedBox(height: 5.h),
                        const Text('Subtitle'),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: kDefaultPadding,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
