import 'package:auto_route/auto_route.dart';
import 'package:eticket/presentation/screens/main/screens/search/search_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchView();
  }
}
