import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eticket/domain/models/models.dart';

final _bR = 10.0.r;
final _vSized = SizedBox(height: 4.h);

class BookingHistoryItemV extends StatelessWidget {
  final BookingModel booking;
  final Function() onTapped;

  const BookingHistoryItemV({
    required this.booking,
    required this.onTapped,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding.w / 2),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(_bR),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                booking.eventName ?? '-',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
              ),
            ),
            _vSized,
            RowItemV(
              title: '${LocaleKeys.event_date.tr()}:',
              value: DateFormatters.toDateTime(
                booking.eventDate,
                pattern: DateFormatters.dmYHmsDashedTemplate,
              ),
            ),
            _vSized,
            RowItemV(
              title: '${LocaleKeys.event_location.tr()}:',
              value: booking.locationName,
            ),
            _vSized,
            RowItemV(
              title: '${LocaleKeys.event_status.tr()}:',
              value: booking.eventStatus.localizedName,
            ),
            _vSized,
            RowItemV(
              title: '${LocaleKeys.cost.tr()}:',
              value: booking.bookingSum.toStringAsFixed(2),
            ),
            _vSized,
            RowItemV(
              title: '${LocaleKeys.ticket_payment_status.tr()}:',
              value: booking.bookingStatus.localizedName,
            ),
            _vSized,
            RowItemV(
              title: '${LocaleKeys.ticket_payemnt_date.tr()}:',
              value: DateFormatters.toDateTime(
                booking.created,
                pattern: DateFormatters.dmYHmsDashedTemplate,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
