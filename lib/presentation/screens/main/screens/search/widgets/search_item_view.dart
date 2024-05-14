import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/presentation/theme/theme.dart';

class SearchItemView extends StatelessWidget {
  final EventDto event;
  final Function() onTap;

  const SearchItemView({
    required this.event,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = DateFormatters.buildEventRangeDateTime(
      dates: event.dateRange,
      pattern: DateFormatters.dMMMSpacedTemplate,
      locale: context.locale,
    );

    final time = DateFormatters.toDateTimeNullable(
      event.dateRange.firstOrNull,
      pattern: DateFormatters.hhmmColonTemplate,
    );

    final imageBoxWidth = context.screenSize.screenWidth / 3;

    return Material(
      color: context.colorScheme.surfaceTint,
      borderRadius: defaultBr,
      child: InkWell(
        borderRadius: defaultBr,
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(5.w),
          child: Row(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: imageBoxWidth,
                    child: ClipRRect(
                      borderRadius: defaultBr,
                      child: Image.network(
                        event.image ?? '',
                        fit: BoxFit.fitWidth,
                        width: imageBoxWidth,
                        height: 100.h,
                        loadingBuilder: (ctx, child, progress) {
                          if (progress == null) {
                            return child;
                          }

                          return Container(
                            color: context.colorScheme.outline.withOpacity(0.1),
                          );
                        },
                        errorBuilder: (ctx, e, st) => Container(
                          color: context.colorScheme.outline.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5.h,
                    left: 5.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 8,
                          sigmaY: 8,
                          tileMode: TileMode.mirror,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: context.colorScheme.outline.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Text(
                            '${LocaleKeys.from.tr()} ${event.minPrice.toInt()}',
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      event.name.toString(),
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      time ?? '-',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      context.dictionaries
                              .getEventTypeByKey(event.type)
                              ?.value ??
                          '',
                    ),
                    Text(
                      event.locationName ?? event.locationType.name.tr(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
