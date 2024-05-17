import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/buttons/tertiary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:eticket/domain/domain.dart';

class BookingTicketsQRV extends HookWidget {
  final List<TicketBookedModel> tickets;
  final int selectedIndex;

  const BookingTicketsQRV({
    required this.tickets,
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageViewController = usePageController(initialPage: selectedIndex);
    final position = useState(selectedIndex.toInt());

    useEffect(() {
      position.value = selectedIndex.toInt();
      return null;
    }, [selectedIndex]);

    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      buttonPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      elevation: 0,
      clipBehavior: Clip.none,
      actionsAlignment: MainAxisAlignment.center,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5.w),
            child: SizedBox(
              width: 350.w,
              height: 270.h,
              child: Stack(
                children: [
                  Scrollbar(
                    controller: pageViewController,
                    thumbVisibility: true,
                    child: PageView.builder(
                      itemCount: tickets.length,
                      controller: pageViewController,
                      onPageChanged: (int index) {
                        selectedIndex;
                        position.value = index.toInt();
                      },
                      itemBuilder: (BuildContext context, int itemIndex) {
                        return SizedBox(
                          width: 350.w,
                          height: 270.h,
                          child: QrImageView(
                            backgroundColor: Colors.transparent,
                            data: tickets[itemIndex].qrCode ?? '',
                            gapless: true,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
      actions: <Widget>[
        Center(
          child: Text(
            '${LocaleKeys.rowNumber.tr()}: ${tickets[position.value].rowNumber}\n'
            '${LocaleKeys.placeNumber.tr()} ${tickets[position.value].placeNumber}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Center(
          child: Text(
            '${position.value + 1} / ${tickets.length}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          // child: DotsIndicator(
          //   dotsCount: ticket.length,
          //   position: position.value,
          //   decorator: DotsDecorator(
          //     size: Size(10.w, 10.h),
          //     activeSize: Size(10.w, 10.h),
          //     color: context.colorScheme.outline,
          //     activeColor: context.colorScheme.secondary,
          //   ),
          // ),
        ),
        SizedBox(height: 10.h),
        TertiaryButton(
          horizontalPadding: 20.w,
          title: LocaleKeys.close.tr(),
          onPressed: () => context.popRoute(),
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
