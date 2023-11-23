import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/data.dart';
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
    final date = DateFormatters.buildEventDateTime(
      startDate: event.startDate,
      endDate: event.endDate,
    );

    return Material(
      color: context.colorScheme.surfaceTint,
      borderRadius: defaultBr,
      child: InkWell(
        borderRadius: defaultBr,
        onTap: onTap,
        child: Container(
          height: 150.h,
          padding: EdgeInsets.all(5.w),
          child: Row(
            children: [
              SizedBox(
                width: context.screenSize.screenWidth / 3,
                child: ClipRRect(
                  borderRadius: defaultBr,
                  child: Image.network(
                    event.image ?? '',
                    fit: BoxFit.fitHeight,
                    height: 150.h,
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
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      event.name.toString(),
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    Text(date),
                    Text(
                      context.dictionaries
                              .getEventTypeByKey(event.type)
                              ?.value ??
                          '',
                    ),
                    Text(
                      event.locationType.name.tr(),
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
