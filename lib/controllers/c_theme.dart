part of '../utils/import-path/app_import_path.dart';

class ControllerMyTheme extends ChangeNotifier {
  // switch widget
  // false ~> `light`
  // true ~> `dark`
  // default `light`
  bool switchMyTheme = false;
  String myThemeName = MyAppLangKey.light;

  /// [changeMyTheme] change UI Widget
  void changeMyTheme(bool myValue) {
    // change state switch widget
    switchMyTheme = myValue;
    // change state name title
    changeMyThemeName(myValue);
// set current theme save locale (sharedPreferences)
    setMyCurrentTheme(myValue);

    /// update when used [switchTheme] [themeName]
    notifyListeners();
  }

  /// [changeMyThemeName] change title for switch `theme`
  void changeMyThemeName(bool myValue) {
    myThemeName = myValue ? MyAppLangKey.dark : MyAppLangKey.light;
  }

  // [themeMode] change theme mode light or dark
  ThemeMode get myThemeMode => switchMyTheme ? ThemeMode.dark : ThemeMode.light;

  /// [checkSaveMyTheme] change theme depended locale save (sharedPreferences)
  checkSaveMyTheme() async {
    // change ui widget switch
    switchMyTheme = await getMyCurrentTheme;
    changeMyThemeName(switchMyTheme);
    notifyListeners();
  }

  /// shard Theme
  /// key
  final kMyCurrentTheme = 'CURRENTTHEME';

  /// [setMyCurrentTheme] save key theme and value is bool
  setMyCurrentTheme(bool myValue) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    /// [value] true is dark if false is light
    preferences.setBool(kMyCurrentTheme, myValue);
  }

  /// [getMyCurrentTheme] get data saved in locale device
  Future<bool> get getMyCurrentTheme async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // default false mean light
    return preferences.getBool(kMyCurrentTheme) ??
        MyAppTheme.myBrightnessSystem();
  }
}
