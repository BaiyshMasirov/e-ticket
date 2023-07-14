import 'package:flutter/material.dart';

//Routing
import '../../../routes/app_router.dart';

//Helpers
import '../../../helper/utils/constants.dart';

class RoundedBottomContainer extends StatelessWidget {
  final List<Widget> children;
  final VoidCallback? onBackTap;
  final EdgeInsets? padding;

  const RoundedBottomContainer({
    Key? key,
    required this.children,
    this.onBackTap,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //back arrow
          InkWell(
            child: const Padding(
              padding: EdgeInsets.only(left: 25.0 - 5, top: 40),
              child: Icon(
                Icons.arrow_back_sharp,
                size: 32,
                color: Colors.white,
              ),
            ),
            onTap: onBackTap ?? () => AppRouter.pop(),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
