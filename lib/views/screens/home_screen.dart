import 'package:e_ti_app/helper/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../helper/utils/assets_helper.dart';

//Helpers
import '../../helper/utils/constants.dart';

//Routing
import '../../routes/route.dart';
import '../../routes/app_router.dart';

//Widgets
import '../widgets/common/custom_text_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 125, 20, Constants.bottomInsets),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(AssetsHelper.logoIcon),
            const SizedBox(height: 35),
            Text(
              'Добро пожаловать!',
              style: UtilTextStyles.welcomeText,
            ),
            const SizedBox(height: 100),
            CustomTextButton.outlined(
              width: double.infinity,
              onPressed: () {
                AppRouter.pushNamed(Routes.RegisterScreenRoute);
              },
              border: Border.all(
                  color: const Color.fromARGB(255, 238, 222, 218), width: 2),
              child: Center(
                child: Text(
                  'Регистрация',
                  style: UtilTextStyles.customTextButtonStyle,
                ),
              ),
            ),
            const SizedBox(height: 17),
            CustomTextButton.gradient(
              width: double.infinity,
              onPressed: () {
                AppRouter.pushNamed(Routes.LoginScreenRoute);
              },
              gradient: Constants.buttonGradientRed,
              child: Center(
                child: Text(
                  'Войти',
                  style: UtilTextStyles.customTextButtonStyle,
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
