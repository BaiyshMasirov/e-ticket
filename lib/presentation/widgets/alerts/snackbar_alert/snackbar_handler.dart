import 'package:eticket/presentation/widgets/alerts/snackbar_alert/snackbar_position.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'snackbar_content.dart';
import 'snackbar_overlay.dart';

class SnackbarHandler {
  final List<SnackbarOverlay> _overlays = [];
  static final SnackbarHandler _instance = SnackbarHandler._internal();
  factory SnackbarHandler() {
    return _instance;
  }

  SnackbarHandler._internal();

  void showOverlay(
    BuildContext context, {
    required SnackbarPosition position,
    required Widget content,
    BoxDecoration? decoration,
    Duration snackbarDuration = const Duration(seconds: 3),
  }) async {
    OverlayState? overlayState = Overlay.of(context);
    final overlay = SnackbarOverlay(id: const Uuid().v4());
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      return SnackBarContent(
        overlay: overlay,
        decoration: decoration,
        content: content,
        snackbarDuration: snackbarDuration,
        position: position,
        onCloseClicked: (currentOverlay) {
          _removeOverlay(currentOverlay);
        },
      );
    });
    overlay.overlay = overlayEntry;
    _overlays.add(overlay);
    overlayState.insert(overlayEntry);
  }

  void _removeOverlay(SnackbarOverlay overlay) {
    overlay.overlay.remove();
    _overlays.removeWhere((element) => element.id == overlay.id);
  }
}
