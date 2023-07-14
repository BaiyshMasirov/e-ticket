import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Helper
import '../../helper/extensions/context_extensions.dart';
import '../../helper/utils/constants.dart';

//Providers
import '../../providers/all_providers.dart';

//Routing
import '../../providers/event_provider.dart';
import '../../routes/app_router.dart';
import '../sceletons/events_skeleton_loader.dart';
import '../widgets/common/error_response_handler.dart';
import '../widgets/events/event_backdrop_view.dart';
import '../widgets/events/event_carousel.dart';
import '../widgets/events/event_icons_row.dart';

class EventsScreen extends HookConsumerWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = context.screenHeight;
    final movies = ref.watch(eventsFuture);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 550),
        switchOutCurve: Curves.easeInBack,
        child: movies.when(
          data: (movies) {
            final backgroundImageController = usePageController(
              initialPage: movies.length ~/ 2,
            );
            return SizedBox.expand(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  //page controller bg
                  Positioned.fill(
                    child: EventBackdropView(
                      backgroundImageController: backgroundImageController,
                      movies: movies,
                    ),
                  ),

                  //Top black overlay
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 110,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: Constants.blackOverlayGradient,
                      ),
                    ),
                  ),

                  //White gradient
                  Positioned.fill(
                    top: screenHeight * 0.40,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: Constants.movieCarouselGradient,
                      ),
                    ),
                  ),

                  //Movies Carousel
                  Positioned(
                    bottom: -50,
                    top: screenHeight * 0.27,
                    child: EventsCarousel(
                      backgroundImageController: backgroundImageController,
                      events: movies,
                    ),
                  ),

                  //Icons row
                  const Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: EventsIconsRow(),
                  )
                ],
              ),
            );
          },
          loading: () => const EventsSkeletonLoader(),
          error: (error, st) => ErrorResponseHandler(
            error: error,
            stackTrace: st,
            retryCallback: () => ref.refresh(eventsFuture),
            onError: () {
              ref.read(authProvider.notifier).logout();
              AppRouter.popUntilRoot();
            },
          ),
        ),
      ),
    );
  }
}
