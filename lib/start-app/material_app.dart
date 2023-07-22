part of '../utils/import-path/app_import_path.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerMyTheme myProviderTheme = Provider.of<ControllerMyTheme>(context);
    // Material
    return MaterialApp(
      title: MyAppLangKey.appName.tr(),
      debugShowCheckedModeBanner: false,
      // theme
      theme: MyAppThemeChoice.light(context),
      darkTheme: MyAppThemeChoice.dark(context),
      themeMode: myProviderTheme.myThemeMode,
      // language
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const MySplashPage(),
    );
  }
}
