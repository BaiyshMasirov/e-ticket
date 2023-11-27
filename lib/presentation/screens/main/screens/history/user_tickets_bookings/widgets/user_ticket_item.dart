import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/assets.gen.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/main/screens/history/user_tickets_bookings/widgets/user_tckets_qr/qr.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:eticket/data/models/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserTicketItem extends StatelessWidget {
  final UserTicketsBookingsDto bookingTicket;
  final List<UserTicketsBookingsDto> arrayBookingTicket;

  const UserTicketItem({
    required this.bookingTicket,
    required this.arrayBookingTicket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageWidth = context.screenSize.screenWidth / 2.1;

    return InkWell(
      onTap: () {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => Qr(
                  ticket: arrayBookingTicket,
                  selectedIndex: arrayBookingTicket.indexOf(bookingTicket),
                ));
      },
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding.w / 2),
        decoration: BoxDecoration(
          color: context.colorScheme.onError,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Assets.images.ticket.image(
                  width: imageWidth,
                ),
                SizedBox(
                  width: 90.w,
                  child: QrImageView(
                    backgroundColor: Colors.transparent,
                    data: bookingTicket.qrCode ?? '',
                    gapless: true,
                    embeddedImageStyle: const QrEmbeddedImageStyle(
                      size: Size(
                        100,
                        100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.w),
            bookingTicket.rowNumber == 0
                ? Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          bookingTicket.type.name.tr(),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(children: [
                          Text(
                            '${LocaleKeys.rowNumber.tr()}:',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(bookingTicket.rowNumber.toString())
                        ]),
                        SizedBox(height: 10.h),
                        Row(children: [
                          Text(
                            '${LocaleKeys.placeNumber.tr()}:',
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(bookingTicket.placeNumber.toString())
                        ]),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
