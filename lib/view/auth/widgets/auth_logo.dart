part of '../../../utils/import-path/app_import_path.dart';

class MyAuthLogo extends StatelessWidget {
  const MyAuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        MyAppTheme.myIconAppTheme(context),
      ),
      width: MyAppDime.third.sw,
    );
  }
}
