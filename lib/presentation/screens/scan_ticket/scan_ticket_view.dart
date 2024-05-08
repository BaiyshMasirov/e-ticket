import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eticket/common/extensions/extensions.dart';
import 'package:eticket/generated/locale_keys.g.dart';
import 'package:eticket/presentation/screens/scan_ticket/bloc/bloc.dart';
import 'package:eticket/presentation/screens/scan_ticket/widgets/widgets.dart';
import 'package:eticket/presentation/widgets/modal_dialogs/modal_dialogs.dart';
import 'package:eticket/utils/hooks/hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

final _scanArea = 246.w;

class ScanTicketView extends HookWidget {
  const ScanTicketView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final qrScannerController = useMobileScannerController(
      formats: [BarcodeFormat.qrCode],
      torchEnabled: false,
      detectionSpeed: DetectionSpeed.noDuplicates,
      detectionTimeoutMs: 1000,
    );

    final qrCodeValue = useState<String?>(null);

    return BlocListener<ScanTicketCubit, ScanTicketState>(
      listener: (ctx, s) => s.maybeWhen(
        orElse: () {},
        checkError: (errorMessage) {
          qrCodeValue.value = null;
          ScanTicketDialog.showHoldTicketDialog(
            text: errorMessage ?? LocaleKeys.unknown_error.tr(),
            isError: true,
            context: context,
            onClose: () => context.popRoute(),
          );
        },
        checkSuccess: (ticketQrCode, successMessage) =>
            ScanTicketDialog.showHoldTicketDialog(
          text: successMessage,
          isError: true,
          context: context,
          onClose: () => context.popRoute(),
        ),
      ),
      child: Stack(
        children: [
          MobileScanner(
            controller: qrScannerController,
            errorBuilder: (p0, p1, p2) => ScanPermissionDeniedView(
              setPermission: () {},
            ),
            overlay: QRScannerOverlay(
              qrScannerController: qrScannerController,
              overlayColor: Colors.black.withOpacity(0.5),
              scanArea: _scanArea,
            ),
            placeholderBuilder: (p0, p1) => Container(
              color: Colors.black,
            ),
            scanWindow: Rect.fromCenter(
              center: MediaQuery.of(context).size.center(Offset.zero),
              width: context.screenSize.screenWidth,
              height: context.screenSize.screenWidth,
            ),
            onDetect: (capture) async {
              if (qrCodeValue.value != null) {
                return;
              }

              final List<Barcode> barcodes = capture.barcodes;
              final result = barcodes[0];
              final qrValue = result.rawValue;

              if (qrValue == null) return;

              qrCodeValue.value = result.rawValue;

              context.read<ScanTicketCubit>().checkTicket(
                    ticketQrCode: qrValue,
                  );
            },
          ),
        ],
      ),
    );
  }
}
