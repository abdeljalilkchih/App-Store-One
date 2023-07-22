part of '../../../utils/import-path/app_import_path.dart';

class MyDrawerSettingDesign extends StatelessWidget {
  const MyDrawerSettingDesign({
    super.key,
    required this.myTitle,
    required this.myIcon,
    this.myOnTap,
    this.myTrailing,
  });
  final String myTitle;
  final String myIcon;
  final void Function()? myOnTap;
  final Widget? myTrailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(myTitle.tr()),
      leading: SvgPicture.asset(
        myIcon,
        width: (MyAppDime.xl / 1.4).w,
        height: (MyAppDime.xl / 1.4).w,
      ),
      onTap: myOnTap,
      trailing: myTrailing,
    );
  }
}
