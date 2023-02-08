import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_ti_app/models/event/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../sceletons/event_poster_placeholder.dart';

//models

//placeholders

class EventBackdropView extends HookWidget {
  const EventBackdropView({
    Key? key,
    required this.backgroundImageController,
    required this.movies,
  }) : super(key: key);

  final PageController backgroundImageController;
  final List<EventModel> movies;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      reverse: true,
      physics: const NeverScrollableScrollPhysics(),
      controller: backgroundImageController,
      itemCount: movies.length,
      itemBuilder: (ctx, i) => CachedNetworkImage(
        imageUrl: movies[i].image,
        fit: BoxFit.cover,
        placeholder: (_, __) => const EventPosterPlaceholder(
          childXAlign: Alignment.topCenter,
          padding: EdgeInsets.only(top: 110),
          iconSize: 85,
          borderRadius: 0,
        ),
        errorWidget: (_, __, Object? ___) => const EventPosterPlaceholder(
          childXAlign: Alignment.topCenter,
          borderRadius: 0,
          iconSize: 85,
          padding: EdgeInsets.only(top: 110),
        ),
      ),
    );
  }
}
