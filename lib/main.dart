import 'package:easy_localization/easy_localization.dart';
import './utils/import-path/app_import_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: MyAppLangConfig.mySupportLocale,
      path: MyAppLangConfig.mYpath,
      fallbackLocale: MyAppLangConfig.mYenLocale,
      child: const MyStoreApp(),
    ),
  );
}

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        child: const MySplashPage(),
        builder: (context, child) {
          return MaterialApp(
            title: 'appName'.tr(),
            debugShowCheckedModeBanner: false,
            // theme
            theme: MyAppThemeChoice.light(context),
            darkTheme: MyAppThemeChoice.dark(context),
            themeMode: ThemeMode.light,
            // language
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: child,
          );
        });
  }
}
