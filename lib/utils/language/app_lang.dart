part of '../import-path/app_import_path.dart';

const String mYkEng = 'en';
const String mYkArb = 'ar';

class MyAppLangConfig {
  // Path Folder Lang
  static String mYpath = 'assets/lang';

  // Support Locale Lang
  static Locale mYenLocale = const Locale(mYkEng);
  static Locale mYarLocale = const Locale(mYkArb);
  // list locale
  static List<Locale> mySupportLocale = [mYenLocale, mYarLocale];
}
