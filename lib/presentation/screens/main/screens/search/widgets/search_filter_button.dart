import 'package:auto_route/auto_route.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/screens/main/screens/search/bloc/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:eticket/domain/models/models.dart';
import 'package:eticket/presentation/screens/main/screens/search/widgets/search_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilterButton extends StatelessWidget {
  const SearchFilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventsState = context.watch<SearchCubit>().state;

    return IconButton(
      onPressed: () {
        final filter = context.read<SearchCubit>().state.eventsFilter;

        EventsFilterBottomSheet.showBottomSheet(
          context: context,
          initialEventType: filter.type,
          initialEventStatus: filter.status,
          initialDate: filter.date,
          onClearFilter: context.read<SearchCubit>().clearFilter,
          onSelect: (date, paymentType, eventStatus) {
            final filter = EventsFilter(
              type: paymentType,
              date: date,
              status: eventStatus,
            );
            context.popRoute();

            context.read<SearchCubit>().refreshPage(filter: filter);
          },
        );
      },
      icon: Stack(
        children: [
          const Icon(
            Icons.format_list_bulleted_rounded,
          ),
          eventsState.eventsFilter.isFilterActive
              ? Positioned(
                  bottom: 0,
                  left: 0,
                  child: Icon(
                    Icons.brightness_1,
                    size: 10.0,
                    color: context.colorScheme.primary,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
