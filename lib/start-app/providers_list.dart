part of '../utils/import-path/app_import_path.dart';

List<SingleChildWidget> kProviderMyList = [
  // theme
  ChangeNotifierProvider(
    create: (_) => ControllerMyTheme(),
  ),
  // Lang
  ChangeNotifierProvider(
    create: (_) => MyControllerLanguage(),
  ),
  // api
  ChangeNotifierProvider(
    create: (_) => MyControllerAPI(),
  ),
  ChangeNotifierProvider(
    create: (_) => MyControllerAuth(),
  ),
  ChangeNotifierProvider(
    create: (_) => MyControllerDB(),
  ),
];
