import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/data/models/history/user_tickets_bookings_dto/user_tickets_bookings_dto.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/widgets/buttons/tertiary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr extends HookWidget {
  final List<UserTicketsBookingsDto> ticket;
  final int selectedIndex;
  const Qr({
    required this.ticket,
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
          SizedBox(
            width: 350.w,
            height: 270.h,
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: ticket.length,
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
                        data: ticket[itemIndex].qrCode ?? '',
                        gapless: true,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: DotsIndicator(
            dotsCount: ticket.length,
            position: position.value,
            decorator: DotsDecorator(
              color: context.colorScheme.primary,
              activeColor: context.colorScheme.errorContainer,
            ),
          ),
        ),
        TertiaryButton(
          title: LocaleKeys.close.tr(),
          onPressed: () => context.popRoute(),
        ),
      ],
    );
  }
}
