part of '../../utils/import-path/app_import_path.dart';

class MyDrawerHome extends StatelessWidget {
  const MyDrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        //header
        const MyDrawerHeaderHome(),
        // spacing  8 height
        MyAppDime.md.verticalSpace,
        // line
        Divider(color: MyAppColors.bgGrey, height: 0),
        // spacing  16 height
        MyAppDime.l.verticalSpace,
        //Settings
        const MyDrawerSetting(),
      ],
    ));
  }
}
