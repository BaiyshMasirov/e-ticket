import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeatPlaceInfoV extends HookWidget {
  const SeatPlaceInfoV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeInfos = useMemoized(
      () => <Row>[
        Row(
          children: [
            Icon(
              Icons.circle,
              size: 20.w,
              color: ColorName.placeUnselected,
            ),
            Text(' ${LocaleKeys.unselected.tr()}'),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              size: 20.w,
              color: ColorName.placeSelected,
            ),
            Text(' ${LocaleKeys.selected.tr()}'),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              size: 20.w,
              color: ColorName.placeSold,
            ),
            Text(' ${LocaleKeys.sold.tr()}'),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              size: 20.w,
              color: ColorName.placeDisabled,
            ),
            Text(' ${LocaleKeys.disabled.tr()}'),
          ],
        ),
      ],
      const [],
    );

    return Scrollbar(
      thickness: 1.h,
      thumbVisibility: true,
      radius: Radius.circular(20.r),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: SizedBox(
          height: 25.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: placeInfos.length,
            itemBuilder: (_, i) => placeInfos[i],
            separatorBuilder: (_, i) => SizedBox(width: 10.w),
          ),
        ),
      ),
    );
  }
}
