import 'package:e_ti_app/views/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/all_providers.dart';
import 'home_screen.dart';

//providers
//import '../../providers/all_providers.dart';

//routes
//import 'home_screen.dart';
//import 'welcome_screen.dart';

class AppStartupScreen extends HookConsumerWidget {
  const AppStartupScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    return authState.maybeWhen(
      authenticated: (fullName) => const WelcomeScreen(),
      orElse: () => const HomeScreen(),
    );
  }
}
