import 'package:e_ti_app/helper/utils/text_styles.dart';
import 'package:e_ti_app/views/widgets/common/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helper/utils/constants.dart';
import '../../../providers/all_providers.dart';
import '../../../routes/app_router.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Profile',
            style: TextStyle(
                color: Colors.white,
                fontSize: 023,
                fontWeight: FontWeight.w800)),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: CustomTextButton.gradient(
          width: double.infinity,
          onPressed: () async {
            ref.read(authProvider.notifier).logout();
            AppRouter.popUntilRoot();
          },
          gradient: Constants.buttonGradientOrange,
          child: Center(
            child: Text('Выход', style: UtilTextStyles.customTextButtonStyle),
          ),
        ),
      ),
    );
  }
}
