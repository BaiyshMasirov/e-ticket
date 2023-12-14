import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

extension BuildContextX on BuildContext {
  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  // AppColors get appColors {
  //   return Theme.of(this).extension<AppColors>()!;
  // }

  ScreenUtil get screenSize {
    return ScreenUtil();
  }

  DictionaryState get dictionaries {
    return GetIt.I.get<DictionaryCubit>().state;
  }

  // TODO: change to server url in future
  String get categoryImageUrlPath {
    // return GetIt.I.get<Configuration>().serverUrl;
    return 'https://e-tick.app/home/GetEventCategoryByType?type=';
  }
}
