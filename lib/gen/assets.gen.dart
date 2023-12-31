/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Uthman-Taha-Naskh-Bold.otf
  String get uthmanTahaNaskhBold => 'assets/fonts/Uthman-Taha-Naskh-Bold.otf';

  /// File path: assets/fonts/Uthman-Taha-Naskh-Regular.otf
  String get uthmanTahaNaskhRegular =>
      'assets/fonts/Uthman-Taha-Naskh-Regular.otf';

  /// File path: assets/fonts/jameel.ttf
  String get jameel => 'assets/fonts/jameel.ttf';

  /// List of all assets
  List<String> get values =>
      [uthmanTahaNaskhBold, uthmanTahaNaskhRegular, jameel];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/image_1.jpg
  AssetGenImage get image1 => const AssetGenImage('assets/image/image_1.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [image1];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/notFound.json
  String get notFound => 'assets/lottie/notFound.json';

  /// List of all assets
  List<String> get values => [notFound];
}

class $AssetsSettingGen {
  const $AssetsSettingGen();

  /// File path: assets/setting/moon.svg
  String get moon => 'assets/setting/moon.svg';

  /// File path: assets/setting/moon_filled.svg
  String get moonFilled => 'assets/setting/moon_filled.svg';

  /// File path: assets/setting/sun.svg
  String get sun => 'assets/setting/sun.svg';

  /// File path: assets/setting/sun_filled.svg
  String get sunFilled => 'assets/setting/sun_filled.svg';

  /// List of all assets
  List<String> get values => [moon, moonFilled, sun, sunFilled];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsSettingGen setting = $AssetsSettingGen();
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
