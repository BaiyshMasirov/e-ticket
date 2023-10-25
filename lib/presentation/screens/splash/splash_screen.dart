import 'package:authentication/authentication.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/widgets/alerts/alerts.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

@RoutePage()
class SplashScreen extends HookWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        context.read<DictionaryCubit>().getAllDictionaries();
        return null;
      },
    );
    return AppScaffold(
      isLoadingFunc: (context) => context.select<DictionaryCubit, bool>(
        (value) => value.state is DictionaryLoading,
      ),
      body: Center(
        child: BlocConsumer<DictionaryCubit, DictionaryState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              data: (value) =>
                  context.read<AuthCubit>().checkAndUpdateAuthStatus(),
            );
          },
          builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            failure: (value) {
              FlutterNativeSplash.remove();
              return DataFetchFailure(
                onTryLoadAgain:
                    context.read<DictionaryCubit>().getAllDictionaries,
                error: value.errorMessage,
              );
            },
          ),
        ),
      ),
    );
  }
}
