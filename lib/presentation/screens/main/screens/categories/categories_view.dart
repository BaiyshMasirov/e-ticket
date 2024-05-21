import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/data/models/models.dart';
import 'package:eticket/presentation/routes/routes.gr.dart';
import 'package:eticket/presentation/screens/main/screens/categories/bloc/bloc.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _defaultItemWidth = 100.w;
final _defaultItemPadding = 5.r;

class CategoriesView extends HookWidget {
  const CategoriesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (_, s) {
          return s.maybeMap(
            orElse: () => const SizedBox.shrink(),
            error: (e) => DataFetchFailure(
              error: e.errorMessage,
              onTryLoadAgain: () =>
                  context.read<CategoriesCubit>().getCategories(),
            ),
            success: (data) {
              return AppSliverScrollView(
                onRefresh: () =>
                    context.read<CategoriesCubit>().getCategories(),
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(height: kDefaultPadding),
                  ),
                  SliverList.separated(
                    itemCount: data.items.length,
                    itemBuilder: (ctx, i) => InkWell(
                      borderRadius: BorderRadius.circular(5.r),
                      onTap: () => context.navigateTo(
                        EventsByTypeRoute(eventType: data.items[i].eventType),
                      ),
                      child: SizedBox(
                        height: _defaultItemPadding + _defaultItemWidth,
                        child: Container(
                          padding: EdgeInsets.all(5.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(data.items[i].name),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: Image.network(
                                  data.items[i].image,
                                  width: _defaultItemWidth,
                                  height: _defaultItemWidth,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      height: _defaultItemWidth,
                                      width: _defaultItemWidth,
                                      decoration: BoxDecoration(
                                        color: context.colorScheme.surfaceTint,
                                      ),
                                    );
                                  },
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }

                                    return Container(
                                      width: _defaultItemWidth,
                                      height: _defaultItemWidth,
                                      color: context.colorScheme.surfaceTint,
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
              );
            },
          );
        },
      ),
    );
  }
}
