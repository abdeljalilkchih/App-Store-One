part of '../utils/import-path/app_import_path.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: kProviderMyList,
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          builder: (context, child) => const MyMaterialApp()),
    );
  }
}
