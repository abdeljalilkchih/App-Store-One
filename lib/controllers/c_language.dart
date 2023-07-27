part of '../utils/import-path/app_import_path.dart';

enum MyChoiceLang {
  eng(MyAppLangKey.english),
  arb(MyAppLangKey.arabic);

  final String myNameLang;

  const MyChoiceLang(this.myNameLang);
}

class MyControllerLanguage extends ChangeNotifier {
  /// UI Widget
  MyChoiceLang? myLang;

  /// list Lang [eng and arb]
  List<MyChoiceLang> myItemLang = [MyChoiceLang.eng, MyChoiceLang.arb];

  /// [changeMyLang]
  void changeMyLang(BuildContext context, {required MyChoiceLang myLang}) {
    if (this.myLang != myLang) {
      /// change value lang depended on lang parameter sent
      this.myLang = myLang;
      // [setLocale] chang language
      context.setLocale(myLang == MyChoiceLang.eng
          ? MyAppLangConfig.mYenLocale
          : MyAppLangConfig.mYarLocale);

      /// restart Application
      MyAppReStartApplication.reBuild(context);

      /// update UI
      // notifyListeners();
    }
  }

  // [checkMyLang] check lang depended on lang device
  void checkMyLang(BuildContext context) {
    myLang = MyAppLangConfig.myCurrentLang(context) == mYkEng
        ? MyChoiceLang.eng
        : MyChoiceLang.arb;

    /// update UI
    notifyListeners();
  }
}
