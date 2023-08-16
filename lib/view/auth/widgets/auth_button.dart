part of '../../../utils/import-path/app_import_path.dart';

class MyAuthButton extends StatelessWidget {
  const MyAuthButton(
      {super.key,
      this.myHeight,
      required this.myTitle,
      required this.onMyClick});
  final double? myHeight;
  final String myTitle;
  final void Function() onMyClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onMyClick,
      borderRadius: BorderRadius.circular(MyAppDime.xxl.w),
      splashColor: MyAppTheme.isMyDark(context)
          ? MyAppColors.splashBtnDark
          : MyAppColors.splashBtnLight,
      child: Container(
        width: MyAppDime.fullScreen.sw,
        height: myHeight ?? (MyAppDime.xxl - MyAppDime.md).h,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.all(MyAppDime.md.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: MyAppTheme.isMyDark(context)
                  ? MyAppColors.btnColorsDark
                  : MyAppColors.btnColorsLight,
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd),
          borderRadius: BorderRadius.circular(MyAppDime.xxl.w),
        ),
        alignment: AlignmentDirectional.center,
        child: Text(
          myTitle.tr().toUpperCase(),
          style:
              MyAppTheme.dSmall(context)?.copyWith(color: MyAppColors.bgWhite),
        ),
      ),
    );
  }
}
