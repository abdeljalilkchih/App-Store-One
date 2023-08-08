part of '../../utils/import-path/app_import_path.dart';

class MyErrorText extends StatelessWidget {
  const MyErrorText({super.key, required this.myTitle});
  final String myTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        myTitle,
        style: MyAppTheme.bMedium(context)?.copyWith(color: MyAppColors.bgRed),
      ).tr(),
    );
  }
}
