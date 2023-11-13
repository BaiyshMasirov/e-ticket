import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _defaultItemWidth = 100.w;
final _defaultItemPadding = 5.r;

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
            itemBuilder: (ctx, i) => InkWell(
              borderRadius: BorderRadius.circular(5.r),
              onTap: () => context.navigateTo(
                EventsByTypeRoute(eventKeyValue: eventTypes[i]),
              ),
              child: SizedBox(
                height: _defaultItemPadding + _defaultItemWidth,
                child: Container(
                  padding: EdgeInsets.all(5.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(eventTypes[i].value),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.r),
                        child: Image.network(
                          context.categoryImageUrlPath +
                              eventTypes[i].key.toString(),
                          width: _defaultItemWidth,
                          height: _defaultItemWidth,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: _defaultItemWidth,
                              width: _defaultItemWidth,
                              decoration: BoxDecoration(
                                color: context.colorScheme.onError,
                              ),
                            );
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }

                            return Container(
                              width: _defaultItemWidth,
                              height: _defaultItemWidth,
                              color: context.colorScheme.onError,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            separatorBuilder: (ctx, i) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    color: context.colorScheme.outline,
                  ),
                ],
              );
            },
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: kDefaultPadding),
          ),
        ],
      ),
    );
  }
}
