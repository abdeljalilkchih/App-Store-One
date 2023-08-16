part of '../../utils/import-path/app_import_path.dart';

class MyAppDime {
  static const double _base = 2;

  /// [xs] = `2.0`
  static const double xs = _base; // 2.0
  /// [sm] = `4.0`
  static const double sm = xs * _base; // 4.0
  /// [md] = `8.0`
  static const double md = sm * _base; // 8.0
  /// [l] = `16.0`
  static const double l = md * _base; // 16.0
  /// [xl] = `32.0`
  static const double xl = l * _base; // 32.0
  /// [xxl] = `64.0`
  static const double xxl = xl * _base; // 64.0
  /// [xxxl] = `128.0`
  static const double xxxl = xxl * _base; // 128.0
  /// [xxxxl] = `256.0`
  static const double xxxxl = xxxl * _base; // 256.0
  /// [fullScreen] = `1`
  static const double fullScreen = 1; //
  /// [third] = `0.35`
  static const double third = 0.35;
}
