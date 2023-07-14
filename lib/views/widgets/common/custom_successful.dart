import 'package:e_ti_app/helper/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../helper/utils/assets_helper.dart';
import '../../../helper/utils/constants.dart';
import 'custom_text_button.dart';

class CustomSuccessful extends StatelessWidget {
  final String? textSuccess;
  final String? textButton;
  final VoidCallback? onPressed;
  const CustomSuccessful(
      {Key? key, this.textSuccess, this.textButton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backColor,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 125, 20, Constants.bottomInsets),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(AssetsHelper.checkLogo),
            const SizedBox(height: 35),
            Text(
              "$textSuccess",
              style: UtilTextStyles.welcomeText,
            ),
            const SizedBox(height: 100),
            const SizedBox(height: 17),
            CustomTextButton.gradient(
              width: double.infinity,
              onPressed: () {
                onPressed;
              },
              gradient: Constants.buttonGradientWhite,
              child: Center(
                child: Text(
                  "$textButton",
                  style: UtilTextStyles.successTextButtonStyle,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
