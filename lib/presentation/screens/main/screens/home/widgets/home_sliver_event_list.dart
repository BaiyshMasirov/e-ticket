import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliverEventList extends StatelessWidget {
  const HomeSliverEventList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: const Text('EVENT 1'),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 200.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              scrollDirection: Axis.horizontal,
              itemCount: 30,
              itemBuilder: (context, index) => Container(
                width: 130.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: context.colorScheme.tertiaryContainer,
                        ),
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
    );
  }
}
