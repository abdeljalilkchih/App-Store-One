part of '../../../utils/import-path/app_import_path.dart';

class MyDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyDetailsAppBar({super.key, required this.myData});
  final ModelMyAppSocial myData;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('${myData.nameApp}'),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(MyAppDime.md.w),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(MyAppLangKey.install.tr()),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
