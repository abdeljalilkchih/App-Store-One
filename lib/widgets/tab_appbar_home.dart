part of '../utils/import-path/app_import_path.dart';

class MyTabAppBarHome extends StatelessWidget {
  const MyTabAppBarHome(
      {super.key, required this.myIcon, required this.myTitle});
  final String myTitle;
  final String myIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // svg icon tab
        SvgPicture.asset(
          myIcon,
          width: (MyAppDime.xl / 1.4).w,

          /// dart ```
          ///  colorFilter: ColorFilter.mode(
          ///    MyAppTheme.isMyDark(context)
          ///        ? MyAppColors.bgWhite
          ///        : MyAppColors.bgBlack,
          ///    BlendMode.difference,
          /// ),
          /// ```
        ),
        MyAppDime.md.horizontalSpace,
        // title tab
        Text(
          myTitle,
          style: GoogleFonts.aBeeZee(
              fontSize: MyAppDime.l.spMin, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
