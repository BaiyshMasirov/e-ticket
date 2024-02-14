import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/data/models/ticket/ticket_dto.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:eticket/presentation/widgets/widgets.dart';
import 'package:eticket/utils/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonSheet extends StatelessWidget {
  final List<TicketDto> tickets;
  final Function() onCancel;
  final Function() onConfirm;

  const ButtonSheet._({
    required this.tickets,
    required this.onCancel,
    required this.onConfirm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        child: Column(
          children: [
            Text(
              LocaleKeys.hold_ticket_description.tr(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: kDefaultPadding),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: tickets.length,
              separatorBuilder: (_, __) => SizedBox(height: 8.h),
              itemBuilder: (_, i) {
                final ticket = tickets[i];

                return Row(children: [
                  Text(
                    '${ticket.rowNumber} - ${LocaleKeys.rowNumber.tr()}',
                    style: body12Regular,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    '${ticket.placeNumber} - ${LocaleKeys.placeNumber.tr()}',
                    style: body12Regular,
                  ),
                ]);
              },
            ),
            SizedBox(height: kDefaultPadding),
            PrimaryButton(
              title: LocaleKeys.confirm.tr(),
              onPressed: onConfirm,
            ),
            SizedBox(height: 8.h),
            TertiaryButton(
              title: LocaleKeys.cancel.tr(),
              onPressed: onCancel,
            ),
          ],
        ),
      ),
    );
  }

  static showBottomSheet({
    required BuildContext context,
    required List<TicketDto> tickets,
    required Function() onCancel,
    required Function() onConfirm,
  }) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15.0),
        ),
      ),
      context: context,
      builder: (context) => ButtonSheet._(
        tickets: tickets,
        onCancel: onCancel,
        onConfirm: onConfirm,
      ),
    );
  }
}
