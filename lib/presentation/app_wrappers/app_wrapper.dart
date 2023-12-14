import 'package:eticket/presentation/app_wrappers/bloc_wrapper.dart';
import 'package:eticket/presentation/app_wrappers/localization_wrapper.dart';
import 'package:eticket/presentation/app_wrappers/screen_size_wrapper.dart';
import 'package:flutter/material.dart';

class AppWrapper extends StatelessWidget {
  final Widget child;

  const AppWrapper({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocWrapper(
      child: LocalizationWrapper(
        child: ScreenSizeWrapper(
          child: child,
        ),
      ),
    );
  }
}
