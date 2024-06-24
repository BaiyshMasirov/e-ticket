import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/app_blocs/email_code_timer/email_code_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailCodeTimerV extends StatelessWidget {
  final double topPadding;

  const EmailCodeTimerV({
    required this.topPadding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailCodeTimerCubit, EmailCodeTimerState>(
      builder: (_, s) => s.maybeMap(
        orElse: () => const SizedBox.shrink(),
        runInProgress: (_) => Center(
          child: Padding(
            padding: EdgeInsets.only(top: topPadding),
            child: Text(
              LocaleKeys.resend_email_code_after.tr(args: [
                Duration(seconds: _.duration).toMMSS(),
              ]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
