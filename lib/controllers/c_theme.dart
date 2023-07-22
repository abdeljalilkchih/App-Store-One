part of '../utils/import-path/app_import_path.dart';

class ControllerMyTheme extends ChangeNotifier {
  // switch widget
  // false ~> `light`
  // true ~> `dark`
  // default `light`
  bool mySwitchTheme = false;
  String myThemeName = MyAppLangKey.light;

  /// [changeMyTheme] change UI Widget
  void changeMyTheme(bool myValue) {
    // change state switch widget
    mySwitchTheme = myValue;
    // change state name title
    changeMyThemeName(myValue);

    /// update when used [switchTheme] [themeName]
    notifyListeners();
  }

  /// [changeMyThemeName] change title for switch `theme`
  void changeMyThemeName(bool myValue) {
    myThemeName = myValue ? MyAppLangKey.dark : MyAppLangKey.light;
  }

  // [themeMode] change theme mode light or dark
  ThemeMode get myThemeMode => mySwitchTheme ? ThemeMode.dark : ThemeMode.light;
}
