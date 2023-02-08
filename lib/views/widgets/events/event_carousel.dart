import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_ti_app/views/widgets/events/white_event_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Helper
import '../../../helper/utils/constants.dart';

import '../../../models/event/event_model.dart';
import '../../../providers/event_provider.dart';
import '../../../routes/app_router.dart';
import '../../../routes/route.dart';

class EventsCarousel extends StatefulHookConsumerWidget {
  final PageController backgroundImageController;
  final List<EventModel> events;

  const EventsCarousel({
    required this.backgroundImageController,
    required this.events,
  });

  @override
  __EventsCarouselState createState() => __EventsCarouselState();
}

class __EventsCarouselState extends ConsumerState<EventsCarousel> {
  late int _currentIndex;

  List<EventModel> get events => widget.events;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      _currentIndex = events.length ~/ 2;
    }, const []);
    return CarouselSlider.builder(
      carouselController: CarouselController(),
      options: getCarouselOptions(),
      itemCount: events.length,
      itemBuilder: (ctx, i, _) => WhiteEventContainer(
        isCurrent: _currentIndex == i,
        event: events[i],
        onViewDetails: () {
          final leftIndex = (i - 1) % events.length;
          final rightIndex = (i + 1) % events.length;
          ref.read(selectedMovieProvider.state).update((_) => events[i]);
          ref
              .read(leftMovieProvider.state)
              .update((state) => events[leftIndex]);
          ref
              .read(rightMovieProvider.state)
              .update((state) => events[rightIndex]);
          AppRouter.pushNamed(Routes.MovieDetailsScreenRoute);
        },
      ),
    );
  }

  CarouselOptions getCarouselOptions() {
    return CarouselOptions(
      scrollPhysics: const BouncingScrollPhysics(),
      enableInfiniteScroll: false,
      viewportFraction: 0.62,
      aspectRatio: 0.68,
      enlargeCenterPage: true,
      enlargeStrategy: CenterPageEnlargeStrategy.height,
      initialPage: _currentIndex,
      onScrolled: (offset) {},
      onPageChanged: (i, reason) {
        setState(() {
          _currentIndex = i;
        });
        widget.backgroundImageController.animateToPage(
          i,
          curve: Curves.easeOutCubic,
          duration: Constants.defaultAnimationDuration,
        );
      },
    );
  }
}
