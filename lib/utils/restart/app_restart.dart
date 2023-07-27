part of '../import-path/app_import_path.dart';

class MyAppReStartApplication extends StatefulWidget {
  const MyAppReStartApplication({super.key, required this.myChild});
  final Widget myChild;

  /// [reBuild] access to private method
  /// null?.restartApp();
  static void reBuild(BuildContext context) => context
      .findAncestorStateOfType<_MyAppReStartApplicationState>()
      ?.restartMyApp();
  @override
  State<MyAppReStartApplication> createState() =>
      _MyAppReStartApplicationState();
}

class _MyAppReStartApplicationState extends State<MyAppReStartApplication> {
  Key myKey = UniqueKey();

  /// [restartMyApp] change key
  void restartMyApp() {
    myKey = UniqueKey();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: myKey, child: widget.myChild);
  }
}
