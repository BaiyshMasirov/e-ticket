import 'package:flutter/material.dart';

import '../../../helper/utils/constants.dart';
import '../../../routes/app_router.dart';
import '../../../routes/route.dart';
import '../common/custom_text_button.dart';

class BrowseMoviesButton extends StatelessWidget {
  const BrowseMoviesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextButton.gradient(
      width: double.infinity,
      onPressed: () {
        AppRouter.pushNamed(Routes.MoviesScreenRoute);
      },
      gradient: Constants.buttonGradientOrange,
      child: const Center(
        child: Text(
          'Посмотреть события',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 0.7,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
