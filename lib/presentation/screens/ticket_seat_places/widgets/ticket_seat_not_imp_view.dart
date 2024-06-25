import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

class TicketSeatNotImpView extends StatelessWidget {
  const TicketSeatNotImpView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(
        LocaleKeys.nothing_here.tr(),
      ),
    );
  }
}
