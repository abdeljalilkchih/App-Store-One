part of '../../../utils/import-path/app_import_path.dart';

class MyDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyDetailsAppBar({super.key, required this.myData});
  final ModelMyAppSocial myData;
  @override
  Widget build(BuildContext context) {
    /// [database] provider  db
    MyControllerDB myDatabase = Provider.of<MyControllerDB>(context);
    return AppBar(
      title: Text(
        '${myData.nameApp}',
        style: GoogleFonts.racingSansOne(),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(MyAppDime.md.w),
          child: OutlinedButton(
            onPressed: () async {
              await myDatabase
                  .manageInstallation(myDatabase.convertTypeDB(myData));
            },
            child: Text(myDatabase.myTitleBtn?.tr() ?? 'install'),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
