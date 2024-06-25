import 'package:eticket/presentation/widgets/modal_dialogs/modal_dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  static Future<bool> isCameraAccessGranted({
    required BuildContext context,
    required String title,
    required String description,
    bool redirectWithoutSettingsDialog = false,
  }) async {
    final cameraPermission = await Permission.camera.request();
    if (cameraPermission.isGranted) {
      return true;
    }
    if (cameraPermission.isDenied) {
      return false;
    }

    if (cameraPermission.isPermanentlyDenied && context.mounted) {
      if (redirectWithoutSettingsDialog) {
        openAppSettings();
        return false;
      }

      showPermissionDialog(
        context: context,
        title: title,
        description: description,
      );
    }

    return false;
  }
}
