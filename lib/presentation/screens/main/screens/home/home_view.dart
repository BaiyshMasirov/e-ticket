import 'package:common/common.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/screens/main/screens/home/widgets/home_sliver_event_list.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends HookWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DictionaryCubit, DictionaryState>(
      builder: (context, state) => AppSliverScrollView(
        onRefresh: () => Future.delayed(const Duration(seconds: 2)),
        headerSliver: const SliverAppBar(
          stretch: false,
          pinned: true,
          floating: true,
          snap: false,
          title: Text('Top Charts'),
        ),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          ),
          ...state.maybeMap(
            orElse: () {
              return [
                SliverToBoxAdapter(
                  child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.blue,
                    child: Container(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.blue,
                    child: Container(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.blue,
                    child: Container(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ];
            },
            data: (value) {
              final eventTypes = value.eventTypes
                  .where((element) => element.key != 0)
                  .toList();

              final eventsList = <Widget>[];

              eventTypes.forEach((eventType) {
                eventsList.addAll([
                  HomeSliverEventList(eventType: eventType),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: kDefaultPadding,
                    ),
                  ),
                ]);
              });

              return eventsList;
            },
            failure: (value) => [
              SliverToBoxAdapter(
                child: DataFetchFailure(
                  onTryLoadAgain: () {
                    context.read<DictionaryCubit>().getAllDictionaries();
                  },
                  error: value.errorMessage,
                ),
              )
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          ),
        ],
      ),
    );
  }
}
