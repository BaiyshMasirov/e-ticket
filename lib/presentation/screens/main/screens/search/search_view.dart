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
            stretch: true,
            pinned: true,
            floating: true,
            snap: false,
            title: const Text('Search'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.h),
              child: Container(
                color: context.colorScheme.secondaryContainer,
                margin: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
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
