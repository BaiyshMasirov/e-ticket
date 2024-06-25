import 'package:eticket/common/common.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:eticket/domain/domain.dart';

extension BuildContextX on BuildContext {
  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  AppColors get appColors => Theme.of(this).extension<AppColors>()!;

  ScreenUtil get screenSize {
    return ScreenUtil();
  }

  Configuration get appConfigs => GetIt.I.get<Configuration>();

  UserPrefsRepository get userPrefsRepository =>
      GetIt.I.get<UserPrefsRepository>();

  AppSettingsRepository get appSettingsRepository =>
      GetIt.I.get<AppSettingsRepository>();
}
