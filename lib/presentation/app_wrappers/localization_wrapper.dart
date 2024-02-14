import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationWrapper extends StatelessWidget {
  // TODO remove locales with constants
  static final List<Locale> locales = [const Locale('ru')];
  final Widget child;

  const LocalizationWrapper({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: locales,
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      child: child,
    );
  }
}
