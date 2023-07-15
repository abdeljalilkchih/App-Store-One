part of '../import-path/app_import_path.dart';

class MyAppColors {
  static colorFromHex(String mYhExaColor, {String mYoPacity = 'FF'}) {
    /// [hExcolor] delete #
    String myColor = mYhExaColor.replaceAll('#', '');

    /// Merge [mYoPacity] with [myColor]
    String mYoPacityColor = '$mYoPacity$myColor';

    /// return color by base 16
    return Color(int.parse(mYoPacityColor, radix: 16));
  }

  // color App
  static final Color blueDetailsBG = colorFromHex('#a2e7f5');
  static final Color darkModeCardDetails = colorFromHex('#484848');
  static final Color darkModeBodyDetails = colorFromHex('#303030');
  static final Color lightModeInstallBtn = colorFromHex('#456369');
  static final Color darkModeInstallBtn = colorFromHex('#BB86FC');
  static final Color lightModeUnInstallBtn = colorFromHex('#e95f44');
  static final Color darkModeUnInstallBtn = colorFromHex('#FF0266');
  static final Color mb = colorFromHex('#FF0266');
  static final Color blackCardSocial = colorFromHex('#C8C8C8', mYoPacity: 'A5');
  static final Color star = colorFromHex('#FFC107');
  static final Color cardClick = colorFromHex('#46B5F6');
  static final Color cardClickDark = colorFromHex('#BB86FC');

  // loading
  static final Color lightLoading = colorFromHex('#46B5F6');
  static final Color darkLoading = colorFromHex('#BB86FC');
  static final Color lightModeSnack = colorFromHex('#90ee02');
  static final Color darkModeSnack = colorFromHex('#BB86FC');

  // color base
  static final Color bgWhite = colorFromHex('#FFFFFF');
  static final Color bgBlack = colorFromHex('#000000');
  static final Color bgDark = colorFromHex('#000000');
  static final Color bgCursor = colorFromHex('#3A3B3C');
  static final Color bgGrey = colorFromHex('#C8C8C8');
  static final Color bgGreen = colorFromHex('#A5D6A7');
  static final Color bgGreenBold = colorFromHex('#1B5E20');
  static final Color bgBlue = colorFromHex('#2196F3');
  static final Color bgRed = colorFromHex('#FD1D1D');
  static final Color bgPink = colorFromHex('#BB86FC');
  static final Color bgOrange = colorFromHex('#F57C00');

  // Theme
  static final Color darkMode = colorFromHex('#121212');
  static final Color lightMode = colorFromHex('#ffffff');
  static final Color lightMain = colorFromHex('#3F51B5');

  //  Btn Color
  static final List<Color> btnColorsLight = [bgBlue, colorFromHex('#99C5E8')];
  static final List<Color> btnColorsDark = [colorFromHex('#7005F3'), bgPink];
  static final Color splashBtnLight = bgBlue.withOpacity(0.5);
  static final Color splashBtnDark = bgPink.withAlpha(100);

// 1- class Colors
// Colors.red

// 2- RGB -> Red, Green, Blue
// 0 - 255
// Color color1 = Color.fromARGB(255, 0, 0, 255);
// Color color2 = Color.fromRGBO(255, 100, 201, 0.257);

// 3 hex color  6 number e.g : 000000
// base 16 :(0, 1 ,2, 3, 4, 5, 6, 7 ,8 ,9 ,A, B, c, D, E, F)
// #005599  (0 to 9) (A to F) base 16
// 00 -> red , 55 -> Green , 99 -> Blue
//  #ffffff -> #fff
//  #000000 -> #000
//  #ff2255 -> # #f25
//  #ff225560 -> last 2 number opacity
// #ff2245 -> #f245  ❌

// hexColor in Flutter
// `#` replace `0x`
// eg: #224488FF -> 0x224488FF
// opacity in flutter hexColor
// eg: 0xFF224488
// Color color4 = const Color(0xff224488);
}
