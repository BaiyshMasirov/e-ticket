import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/event/widgets/widgets.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:eticket/utils/redirects/redirects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventView extends StatelessWidget {
  final EventDto event;

  const EventView({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedDateTime = DateFormatters.buildEventRangeDateTime(
      dates: event.dateRange,
      pattern: DateFormatters.dMMMSpacedTemplate,
      locale: context.locale,
    );

    final formattedTime = DateFormatters.toDateTimeNullable(
      event.dateRange.firstOrNull,
      pattern: DateFormatters.hhmmColonTemplate,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                SizedBox(
                  height: 300.h,
                  width: context.screenSize.screenWidth,
                  child: Image.network(
                    event.image ?? '',
                    fit: BoxFit.fitHeight,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: context.colorScheme.surfaceTint,
                      height: 300.h,
                      width: 300.h,
                    ),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }

                      return Container(
                        color: context.colorScheme.surfaceTint,
                        height: 300.h,
                        width: 300.h,
                      );
                    },
                  ),
                ),
                Positioned(
                  top: context.screenSize.statusBarHeight + 8.h,
                  left: 8.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.r),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 2,
                        sigmaY: 2,
                        tileMode: TileMode.mirror,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.colorScheme.outline.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: AppBackButton(
                          onTapped: () => context.popRoute(),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: context.screenSize.statusBarHeight + 8.h,
                  right: 8.w,
                  child: Visibility(
                    visible: event.latLng != null,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                          tileMode: TileMode.mirror,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: context.colorScheme.outline.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.pin_drop_rounded,
                              color: context.appColors.green,
                            ),
                            onPressed: () {
                              final latLng = event.latLng;

                              if (latLng == null) return;

                              MapRedirect.redirectTo(
                                context: context,
                                latLngModel: LatLngModel.fromDto(dto: latLng),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    child: Container(
                      height: 60.h,
                      color:
                          context.colorScheme.surfaceVariant.withOpacity(0.6),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 8,
                          sigmaY: 8,
                          tileMode: TileMode.mirror,
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        event.name ?? '-',
                        style: context.theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${event.ageLimit}+'),
                          SizedBox(width: 20.w),
                          Text(
                            '${LocaleKeys.from.tr()} ${event.minPrice.toInt()}',
                          ),
                          SizedBox(width: 20.w),
                          Text('$formattedDateTime ${formattedTime}'),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(event.locationName ?? event.locationType.localizedName),
                SizedBox(height: 4.h),
                EventDescriptionV(
                  descriptionQuill: event.description ?? '',
                )
              ],
            ),
          ),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }
}
