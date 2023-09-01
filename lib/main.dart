import 'package:app_store_1/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './utils/import-path/app_import_path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
