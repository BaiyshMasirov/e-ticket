import 'package:flutter/cupertino.dart';

import '../../../helper/utils/constants.dart';
import '../../../routes/app_router.dart';
import '../../../routes/route.dart';
import '../common/custom_text_button.dart';

class ViewBookingsButton extends StatelessWidget {
  const ViewBookingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextButton.outlined(
      width: double.infinity,
      onPressed: () => AppRouter.pushNamed(Routes.UserBookingsScreenRoute),
      border: Border.all(color: Constants.primaryColor, width: 4),
      child: const Center(
        child: Text(
          'Посмотреть бронь',
          style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 15,
            letterSpacing: 0.7,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
