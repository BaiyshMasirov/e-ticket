import 'package:e_ti_app/enums/event_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Helpers
import '../../../helper/extensions/context_extensions.dart';
import '../../../helper/extensions/string_extension.dart';
import '../../../helper/utils/constants.dart';

//Providers
import '../../../providers/event_provider.dart';

class MovieTypePopupMenu extends ConsumerWidget {
  const MovieTypePopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<EventType>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      color: Constants.scaffoldColor,
      icon: const Icon(
        Icons.filter_list_rounded,
        size: 25,
        color: Colors.white,
      ),
      itemBuilder: (_) => [
        //'ALL' types item
        PopupMenuItem(
          value: EventType.ALL_MOVIES,
          child: Text(
            EventType.ALL_MOVIES.name.removeUnderScore,
            style: context.bodyText1,
            maxLines: 1,
          ),
        ),

        PopupMenuItem(
          value: EventType.NOW_SHOWING,
          child: Text(
            EventType.NOW_SHOWING.name.removeUnderScore,
            style: context.bodyText1,
            maxLines: 1,
          ),
        ),

        PopupMenuItem(
          value: EventType.COMING_SOON,
          child: Text(
            EventType.COMING_SOON.name.removeUnderScore,
            style: context.bodyText1,
            maxLines: 1,
          ),
        )
      ],
      onSelected: (newValue) {
        final _selectedMovieTypeProv =
            ref.read(selectedMovieTypeProvider.state);
        if (_selectedMovieTypeProv.state != newValue) {
          _selectedMovieTypeProv.state = newValue;
        }
      },
    );
  }
}
