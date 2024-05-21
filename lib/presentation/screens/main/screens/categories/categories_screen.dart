import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/categories/bloc/bloc.dart';
import 'package:eticket/presentation/screens/main/screens/categories/categories_view.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class CategoriesScreen extends HookWidget {
  const CategoriesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoriesCubit.initialize()..getCategories(),
      child: AppScaffold(
        title: LocaleKeys.categories.tr(),
        body: const CategoriesView(),
        isLoadingFunc: (context) => context.select<CategoriesCubit, bool>(
          (c) => c.state.maybeMap(
            orElse: () => false,
            loading: (_) => true,
          ),
        ),
      ),
    );
  }
}
