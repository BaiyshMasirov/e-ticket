import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenSizeWrapper extends StatelessWidget {
  final Widget child;

  const ScreenSizeWrapper({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(360, 640),
      builder: (context, child) => this.child,
    );
  }
}
