import 'package:e_ti_app/models/event/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

//Helper
import '../../../helper/utils/constants.dart';

import '../../sceletons/event_poster_placeholder.dart';
import '../common/custom_network_image.dart';
import '../common/custom_text_button.dart';
import 'event_overview_column.dart';

class WhiteEventContainer extends HookWidget {
  const WhiteEventContainer({
    Key? key,
    required this.isCurrent,
    required this.event,
    required this.onViewDetails,
  }) : super(key: key);

  final EventModel event;
  final bool isCurrent;
  final VoidCallback onViewDetails;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Constants.defaultAnimationDuration,
      curve: Curves.fastOutSlowIn,
      decoration: BoxDecoration(
        color: isCurrent ? Colors.white : Colors.white54,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, Constants.bottomInsetsLow),
      child: LayoutBuilder(
        builder: (ctx, constraints) => Column(
          children: [
            //Poster image
            CustomNetworkImage(
              imageUrl: event.image,
              height: constraints.minHeight * 0.58,
              fit: BoxFit.fill,
              onTap: onViewDetails,
              placeholder: EventPosterPlaceholder(
                height: constraints.minHeight * 0.58,
              ),
              errorWidget: EventPosterPlaceholder(
                height: constraints.minHeight * 0.58,
              ),
            ),

            const SizedBox(height: 10),

            //Movie details and button
            if (isCurrent) ...[
              EventOverviewColumn(movie: event),

              const Spacer(),

              //View Details Button
              CustomTextButton(
                color: Constants.scaffoldColor,
                child: const Center(
                  child: Text(
                    'Детали',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                onPressed: onViewDetails,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
