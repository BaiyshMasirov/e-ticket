import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension BuildContextX on BuildContext {
  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  AppColors get appColors {
    return Theme.of(this).extension<AppColors>()!;
  }

  ScreenUtil get screenSize {
    return ScreenUtil();
  }
}
