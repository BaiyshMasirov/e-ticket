import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class _MobileScannerControllerHook extends Hook<MobileScannerController> {
  final CameraFacing facing;
  final bool torchEnabled;
  final bool returnImage;
  final List<BarcodeFormat>? formats;
  final DetectionSpeed detectionSpeed;
  final int detectionTimeoutMs;
  final bool autoStart;
  final Size? cameraResolution;

  const _MobileScannerControllerHook({
    required this.facing,
    required this.detectionSpeed,
    required this.detectionTimeoutMs,
    required this.torchEnabled,
    required this.formats,
    required this.returnImage,
    required this.autoStart,
    required this.cameraResolution,
  });

  @override
  _MobileScannerControllerHookState createState() =>
      _MobileScannerControllerHookState();
}

class _MobileScannerControllerHookState
    extends HookState<MobileScannerController, _MobileScannerControllerHook> {
  late MobileScannerController mobileScannerController;

  @override
  void initHook() {
    super.initHook();
    mobileScannerController = MobileScannerController(
      formats: hook.formats,
      autoStart: hook.autoStart,
      cameraResolution: hook.cameraResolution,
      detectionSpeed: hook.detectionSpeed,
      detectionTimeoutMs: hook.detectionTimeoutMs,
      facing: hook.facing,
      returnImage: hook.returnImage,
      torchEnabled: hook.torchEnabled,
    );
  }

  @override
  MobileScannerController build(BuildContext context) {
    return mobileScannerController;
  }

  @override
  void dispose() {
    mobileScannerController.dispose();
    super.dispose();
  }
}

MobileScannerController useMobileScannerController({
  /// Select which camera should be used.
  ///
  /// Default: CameraFacing.back
  CameraFacing facing = CameraFacing.back,

  /// Enable or disable the torch (Flash) on start
  ///
  /// Default: disabled
  bool torchEnabled = false,

  /// Set to true if you want to return the image buffer with the Barcode event
  ///
  /// Only supported on iOS and Android
  bool returnImage = false,

  /// If provided, the scanner will only detect those specific formats
  List<BarcodeFormat>? formats,

  /// Sets the speed of detections.
  ///
  /// WARNING: DetectionSpeed.unrestricted can cause memory issues on some devices
  DetectionSpeed detectionSpeed = DetectionSpeed.noDuplicates,

  /// Sets the timeout, in milliseconds, of the scanner.
  ///
  /// This timeout is ignored if the [detectionSpeed]
  /// is not set to [DetectionSpeed.normal].
  ///
  /// By default this is set to `250` milliseconds,
  /// which prevents memory issues on older devices.
  int detectionTimeoutMs = 1000,

  /// Automatically start the mobileScanner on initialization.
  bool autoStart = true,

  /// The desired resolution for the camera.
  ///
  /// When this value is provided, the camera will try to match this resolution,
  /// or fallback to the closest available resolution.
  /// When this is null, Android defaults to a resolution of 640x480.
  ///
  /// Bear in mind that changing the resolution has an effect on the aspect ratio.
  ///
  /// When the camera orientation changes,
  /// the resolution will be flipped to match the new dimensions of the display.
  ///
  /// Currently only supported on Android.
  Size? cameraResolution,
}) {
  return use(_MobileScannerControllerHook(
    formats: formats,
    autoStart: autoStart,
    cameraResolution: cameraResolution,
    detectionSpeed: detectionSpeed,
    detectionTimeoutMs: detectionTimeoutMs,
    facing: facing,
    returnImage: returnImage,
    torchEnabled: torchEnabled,
  ));
}
