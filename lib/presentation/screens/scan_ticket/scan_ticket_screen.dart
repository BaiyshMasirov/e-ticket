import 'package:auto_route/annotations.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/common.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/scan_ticket/bloc/bloc.dart';
import 'package:eticket/presentation/screens/scan_ticket/scan_ticket_view.dart';
import 'package:eticket/presentation/screens/scan_ticket/widgets/scan_permission_denied_view.dart';
import 'package:eticket/presentation/widgets/app_scaffold.dart';
import 'package:eticket/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class ScanTicketScreen extends HookWidget {
  const ScanTicketScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraPermissionGranted = useState<bool?>(null);

    final void Function() setPermission = useMemoized(
      () => () async {
        final result = await PermissionHandler.isCameraAccessGranted(
          context: context,
          title: LocaleKeys.request_access_to_camera_permission_title.tr(),
          description:
              LocaleKeys.request_access_to_camera_permission_description.tr(),
        );

        cameraPermissionGranted.value = result;
      },
    );

    useEffect(() {
      setPermission();

      return null;
    }, const []);

    final Widget child;

    if (cameraPermissionGranted.value == true) {
      child = const ScanTicketView();
    } else if (cameraPermissionGranted.value == false) {
      child = ScanPermissionDeniedView(
        setPermission: setPermission,
      );
    } else {
      child = Container(
        color: context.colorScheme.surfaceTint,
      );
    }

    return BlocProvider(
      create: (ctx) => ScanTicketCubit.initialize(),
      child: AppScaffold(
        title: LocaleKeys.to_scan_tickets.tr(),
        isLoadingFunc: (context) => context.select<ScanTicketCubit, bool>(
          (value) => value.state is ScanTicketCheckingState,
        ),
        body: child,
      ),
    );
  }
}
