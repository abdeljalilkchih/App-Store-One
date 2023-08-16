part of '../../../utils/import-path/app_import_path.dart';

class MyAuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
