/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bishkek_arena.png
  AssetGenImage get bishkekArena =>
      const AssetGenImage('assets/images/bishkek_arena.png');

  /// File path: assets/images/blank_ticket.png
  AssetGenImage get blankTicket =>
      const AssetGenImage('assets/images/blank_ticket.png');

  $AssetsImagesPaymentsGen get payments => const $AssetsImagesPaymentsGen();

  /// File path: assets/images/ticket.png
  AssetGenImage get ticket => const AssetGenImage('assets/images/ticket.png');

  /// List of all assets
  List<AssetGenImage> get values => [bishkekArena, blankTicket, ticket];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/icon_launcher_android_background.png
  AssetGenImage get iconLauncherAndroidBackground =>
      const AssetGenImage('assets/logos/icon_launcher_android_background.png');

  /// File path: assets/logos/icon_launcher_android_foreground.png
  AssetGenImage get iconLauncherAndroidForeground =>
      const AssetGenImage('assets/logos/icon_launcher_android_foreground.png');

  /// File path: assets/logos/icon_launcher_ios.png
  AssetGenImage get iconLauncherIos =>
      const AssetGenImage('assets/logos/icon_launcher_ios.png');

  /// File path: assets/logos/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/logos/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        iconLauncherAndroidBackground,
        iconLauncherAndroidForeground,
        iconLauncherIos,
        logo
      ];
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/empty_glass.json
  LottieGenImage get emptyGlass =>
      const LottieGenImage('assets/lotties/empty_glass.json');

  /// File path: assets/lotties/loading.json
  LottieGenImage get loading =>
      const LottieGenImage('assets/lotties/loading.json');

  /// List of all assets
  List<LottieGenImage> get values => [emptyGlass, loading];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  $AssetsSvgsBookingGen get booking => const $AssetsSvgsBookingGen();

  /// File path: assets/svgs/delete_left.svg
  SvgGenImage get deleteLeft =>
      const SvgGenImage('assets/svgs/delete_left.svg');

  /// File path: assets/svgs/face_id.svg
  SvgGenImage get faceId => const SvgGenImage('assets/svgs/face_id.svg');

  /// File path: assets/svgs/instagram.svg
  SvgGenImage get instagram => const SvgGenImage('assets/svgs/instagram.svg');

  /// File path: assets/svgs/touch_id.svg
  SvgGenImage get touchId => const SvgGenImage('assets/svgs/touch_id.svg');

  /// List of all assets
  List<SvgGenImage> get values => [deleteLeft, faceId, instagram, touchId];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ru.json
  String get ru => 'assets/translations/ru.json';

  /// List of all assets
  List<String> get values => [ru];
}

class $AssetsImagesPaymentsGen {
  const $AssetsImagesPaymentsGen();

  /// File path: assets/images/payments/balance.png
  AssetGenImage get balance =>
      const AssetGenImage('assets/images/payments/balance.png');

  /// File path: assets/images/payments/elsom.png
  AssetGenImage get elsom =>
      const AssetGenImage('assets/images/payments/elsom.png');

  /// File path: assets/images/payments/mbank.png
  AssetGenImage get mbank =>
      const AssetGenImage('assets/images/payments/mbank.png');

  /// File path: assets/images/payments/megapay.png
  AssetGenImage get megapay =>
      const AssetGenImage('assets/images/payments/megapay.png');

  /// File path: assets/images/payments/odengi.png
  AssetGenImage get odengi =>
      const AssetGenImage('assets/images/payments/odengi.png');

  /// File path: assets/images/payments/visa_only.png
  AssetGenImage get visaOnly =>
      const AssetGenImage('assets/images/payments/visa_only.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [balance, elsom, mbank, megapay, odengi, visaOnly];
}

class $AssetsSvgsBookingGen {
  const $AssetsSvgsBookingGen();

  /// File path: assets/svgs/booking/svg_disabled_bus_seat.svg
  SvgGenImage get svgDisabledBusSeat =>
      const SvgGenImage('assets/svgs/booking/svg_disabled_bus_seat.svg');

  /// File path: assets/svgs/booking/svg_selected_bus_seats.svg
  SvgGenImage get svgSelectedBusSeats =>
      const SvgGenImage('assets/svgs/booking/svg_selected_bus_seats.svg');

  /// File path: assets/svgs/booking/svg_sold_bus_seat.svg
  SvgGenImage get svgSoldBusSeat =>
      const SvgGenImage('assets/svgs/booking/svg_sold_bus_seat.svg');

  /// File path: assets/svgs/booking/svg_unselected_bus_seat.svg
  SvgGenImage get svgUnselectedBusSeat =>
      const SvgGenImage('assets/svgs/booking/svg_unselected_bus_seat.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        svgDisabledBusSeat,
        svgSelectedBusSeats,
        svgSoldBusSeat,
        svgUnselectedBusSeat
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
  static const $AssetsLottiesGen lotties = $AssetsLottiesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
