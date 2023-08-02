part of '../../../utils/import-path/app_import_path.dart';

class MyDrawerSetting extends StatelessWidget {
  const MyDrawerSetting({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerMyTheme myProviderTheme = Provider.of<ControllerMyTheme>(context);
    return Expanded(
        flex: 5,
        child: Column(children: [
          // My Apps
          MyDrawerSettingDesign(
            myTitle: MyAppLangKey.myApps,
            myIcon: MyAppMedia.myApp,
            myOnTap: () {},
          ),
          // Language
          const MyDrawerSettingDesign(
            myTitle: MyAppLangKey.language,
            myIcon: MyAppMedia.translate,
            myTrailing: MyDrawerSettingLang(),
          ),
          // Theme
          MyDrawerSettingDesign(
            myTitle: myProviderTheme.myThemeName,
            myIcon: MyAppMedia.theme,
            myTrailing: const MyDrawerSettingTheme(),
          ),
          // Terms
          MyDrawerSettingDesign(
            myTitle: MyAppLangKey.terms,
            myIcon: MyAppMedia.terms,
            myOnTap: () => myPageTerms(context),
          ),
          // Logout
          MyDrawerSettingDesign(
            myTitle: MyAppLangKey.logout,
            myIcon: MyAppMedia.logout,
            myOnTap: () {},
          )
        ]));
  }

  /// [myPageTerms] push webview
  void myPageTerms(BuildContext context) {
    MaterialPageRoute<MyWebViewPage> myRoute = MaterialPageRoute(
        builder: (context) => MyWebViewPage(
            myTitle: MyAppLangKey.terms, myUrl: MyApiKey.myTermsUrl(context)));
    Navigator.push(context, myRoute);
  }
}
