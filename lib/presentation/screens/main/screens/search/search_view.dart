import 'dart:ui';

import 'package:eticket/common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            stretch: true,
            pinned: true,
            floating: true,
            snap: false,
            title: const Text('Search'),
            flexibleSpace: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                  tileMode: TileMode.mirror,
                ),
                child: const Center(),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.h),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.onTertiaryContainer
                          .withOpacity(0.1),
                    ),
                    BoxShadow(
                      color: context.colorScheme.tertiaryContainer
                          .withOpacity(0.2),
                      spreadRadius: -10.0,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text(index.toString()),
            ),
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            itemCount: 20,
          ),
        ],
      ),
    );
  }
}
