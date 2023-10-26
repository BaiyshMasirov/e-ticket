import 'package:auto_route/auto_route.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesView extends HookWidget {
  final List<KeyValueMapDto> eventTypes;

  const CategoriesView({
    required this.eventTypes,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: AppSliverScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: kDefaultPadding),
          ),
          SliverList.separated(
            itemCount: eventTypes.length,
            itemBuilder: (ctx, i) => Card(
              child: ListTile(
                onTap: () {
                  context.navigateTo(
                    EventsByTypeRoute(eventKeyValue: eventTypes[i]),
                  );
                },
                title: Text(eventTypes[i].value),
              ),
            ),
            separatorBuilder: (ctx, i) => SizedBox(height: 10.h),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: kDefaultPadding),
          ),
        ],
      ),
    );
  }
}
