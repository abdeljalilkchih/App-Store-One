part of '../import-path/app_import_path.dart';

class MyAppTheme {
  // --------------- text font size big --------
  /// [displayLarge] type: `Regular`  size: `57` space: `0`
  static TextStyle? dLarge(BuildContext context) =>
      Theme.of(context).textTheme.displayLarge;

  /// [displayMedium] type: `Regular` size: `45` space: `0`
  static TextStyle? dMedium(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium;

  /// [displaySmall] type: `Regular`  size: `36` space: `0`
  static TextStyle? dSmall(BuildContext context) =>
      Theme.of(context).textTheme.displaySmall;

  // ------------ title main ----------------
  /// [headlineLarge] type: `Regular`  size: `32` space: `0`
  static TextStyle? hLarge(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge;

  /// [headlineMedium] type: `Regular` size: `28` space: `0`
  static TextStyle? hMedium(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium;

  /// [headlineSmall] type: `Regular` size: `24` space: `0`
  static TextStyle? hSmall(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall;

// ---------------- title pyrography -------------
  /// [titleLarge] Medium size  `22` space `0`
  static TextStyle? tLarge(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge;

  /// [titleMedium] Medium size  `16` space `0.15`
  static TextStyle? tMedium(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium;

  /// [titleSmall] Medium size  `14` space `0.1`
  static TextStyle? tSmall(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall;

//------------- pyrography--------------
  /// [bodyLarge] type: `Regular` size: `16` space: `0.15`
  static TextStyle? bLarge(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge;

  /// [bodyMedium] type: `Regular` size: `14` space: `0.25`
  static TextStyle? bMedium(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium;

  /// [bodySmall] type: `Regular` size:  `12` space: `0.4`
  static TextStyle? bSmall(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall;

// ----------------- Button -----------------
  /// [labelLarge] type: `Medium` size: `14` space: `0.1`
  static TextStyle? lLarge(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge;

  ///  [labelMedium] type: `Medium` size: `12` space: `0.5`
  static TextStyle? lMedium(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium;

  ///  [labelSmall] type: `Medium` size: `11` space: `0.5`
  static TextStyle? lSmall(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall;

  /// [isMyDark] check choice theme return bool
  ///
  /// `true` = Dark
  ///
  /// `false` = Light
  static bool isMyDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  /// [brightnessSystem]  return false light if true dark
  static bool myBrightnessSystem() {
    Brightness myBrightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return myBrightness == Brightness.dark;
  }

  /// [myThemeState] check is state theme when theme dark return keyword `dark` or not return `light`
  static String myThemeState(context) =>
      isMyDark(context) ? MyAppLangKey.dark : MyAppLangKey.light;

  /// [myThemeColor] return color depended on theme if theme dart return color `#121212` is  not return `#ffffff`
  static Color myThemeColor(context) =>
      isMyDark(context) ? MyAppColors.darkMode : MyAppColors.lightMode;

  /// [myIconAppTheme] return icon light or icon dart for app
  static String myIconAppTheme(BuildContext context) =>
      isMyDark(context) ? MyAppMedia.appIconDark : MyAppMedia.appIconLight;

  /// [myColorAuth] return color for Auth Design
  static Color myColorAuth(BuildContext context) =>
      isMyDark(context) ? MyAppColors.bgPink : MyAppColors.bgBlue;

  /// [myBorderErrorTheme] return color for border error
  static Color myBorderErrorTheme(BuildContext context) =>
      isMyDark(context) ? Colors.pink : MyAppColors.bgRed;

  /// [myTextErrorTheme] return color for text error
  static Color myTextErrorTheme(BuildContext context) =>
      isMyDark(context) ? Colors.pinkAccent : MyAppColors.bgRed;
}
