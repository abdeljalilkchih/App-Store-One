part of '../utils/import-path/app_import_path.dart';

class MyMaterialApp extends StatefulWidget {
  const MyMaterialApp({super.key});

  @override
  State<MyMaterialApp> createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  void initState() {
    super.initState();
    // provider theme
    ControllerMyTheme pMyTheme =
        Provider.of<ControllerMyTheme>(context, listen: false);
    // check theme system or user
    pMyTheme.checkSaveMyTheme();
  }

  @override
  Widget build(BuildContext context) {
    // provider theme
    ControllerMyTheme pMyTheme = Provider.of<ControllerMyTheme>(context);
    // Material
    return MaterialApp(
      title: MyAppLangKey.appName.tr(),
      debugShowCheckedModeBanner: false,
      // theme
      theme: MyAppThemeChoice.light(context),
      darkTheme: MyAppThemeChoice.dark(context),
      themeMode: pMyTheme.myThemeMode,
      // language
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const MySplashPage(),
    );
  }
}
