part of '../../../utils/import-path/app_import_path.dart';

class MyAuthFooter extends StatelessWidget {
  const MyAuthFooter(
      {super.key,
      required this.myFirst,
      required this.mySecond,
      required this.onMyClick});
  final String myFirst;
  final String mySecond;
  final void Function() onMyClick;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: myFirst.tr(),

      /// v.v.v.imp
      style: DefaultTextStyle.of(context).style,
      children: [
        const TextSpan(text: ' '),
        TextSpan(
            text: mySecond.tr(),
            recognizer: TapGestureRecognizer()..onTap = onMyClick,
            style: MyAppTheme.bMedium(context)
                ?.copyWith(color: MyAppTheme.myColorAuth(context)))
      ],
    ));
  }
}
