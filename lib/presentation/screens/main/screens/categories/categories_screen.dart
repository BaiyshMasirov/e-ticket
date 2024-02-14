import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/main/screens/categories/categories_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class CategoriesScreen extends HookWidget {
  const CategoriesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventTypes = context
        .read<DictionaryCubit>()
        .state
        .eventTypes
        .where((element) => element.key != 0)
        .toList();

    return AppScaffold(
      title: LocaleKeys.categories.tr(),
      body: CategoriesView(
        eventTypes: eventTypes,
      ),
    );
  }
}
