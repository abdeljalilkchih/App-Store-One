import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import './utils/import-path/app_import_path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    // lang
    EasyLocalization(
      supportedLocales: MyAppLangConfig.mySupportLocale,
      path: MyAppLangConfig.mYpath,
      fallbackLocale: MyAppLangConfig.mYenLocale,
      child: const MyAppReStartApplication(
        myChild: MyStoreApp(),
      ),
    ),
  );
}
