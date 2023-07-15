part of '../import-path/app_import_path.dart';

class MyAppThemeChoice {
  /// [Light]
  static ThemeData light(BuildContext context) {
    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: MyAppColors.lightMain),
      appBarTheme: const AppBarTheme(centerTitle: true, elevation: 5),
      cardTheme: const CardTheme(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
      ),
      // textTheme: Theme.of(context)
      //     .textTheme
      //     .apply(displayColor: Colors.green, bodyColor: Colors.yellow)
    );
  }

  /// [dark]
  static ThemeData dark(BuildContext context) {
    return ThemeData.dark(useMaterial3: true).copyWith(
      appBarTheme: const AppBarTheme(centerTitle: true, elevation: 5),
      cardTheme: const CardTheme(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
