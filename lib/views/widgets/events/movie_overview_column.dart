import 'package:e_ti_app/models/event/event_model.dart';
import 'package:flutter/material.dart';

//Helpers
import '../../../helper/extensions/context_extensions.dart';
import '../common/custom_chips_list.dart';

class MovieOverviewColumn extends StatelessWidget {
  const MovieOverviewColumn({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final EventModel movie;

  @override
  Widget build(BuildContext context) {
    late List<String> hashTags =
        [movie.LocationName, movie.Name, movie.Description].toList();
    return Column(
      children: [
        //Title
        Text(
          movie.Name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.headline2.copyWith(
            color: Colors.black,
            fontSize: 21,
          ),
        ),

        const SizedBox(height: 13),

        //Genres
        CustomChipsList(
          chipHeight: 26,
          chipGap: 7,
          chipContents: hashTags,
        ),

        const SizedBox(height: 13),

        //Elipses
        const Text(
          '...',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 22,
            height: 1,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}
