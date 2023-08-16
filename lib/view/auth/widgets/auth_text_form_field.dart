part of '../../../utils/import-path/app_import_path.dart';

class MyAuthTextFormField extends StatefulWidget {
  const MyAuthTextFormField(
      {super.key,
// TextFormField
      this.myDefaultValue,
      this.myKeyboardType,
      this.myPass = false,
      // Decoration
      this.myHint,
      this.myLabel,
      this.myHelpText,
      this.myAfterIcon,
      this.myBeforeIcon});
  // properties for TextFormField
  final String? myDefaultValue;
  final TextInputType? myKeyboardType;
  final bool myPass;

// properties for Decoration
  final String? myHint;
  final String? myLabel;
  final String? myHelpText;

  /// [myBeforeIcon] before text
  final IconData? myBeforeIcon;

  /// [myAfterIcon] after text
  final IconData? myAfterIcon;
  @override
  State<MyAuthTextFormField> createState() => _MyAuthTextFormFieldState();
}

class _MyAuthTextFormFieldState extends State<MyAuthTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: MyAppTheme.myColorAuth(context),
      initialValue: widget.myDefaultValue,
      keyboardType: widget.myKeyboardType,
      obscureText: widget.myPass,
      obscuringCharacter: '✦',
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.myHint?.tr(),
        labelText: widget.myLabel?.tr(),
        helperText: widget.myHelpText?.tr(),
        helperMaxLines: 2,
        prefixIcon: Icon(widget.myBeforeIcon),
        suffixIcon: Icon(widget.myAfterIcon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MyAppDime.l.w),
          borderSide: BorderSide(color: MyAppTheme.myColorAuth(context)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MyAppDime.l.w),
          borderSide: BorderSide(color: MyAppTheme.myColorAuth(context)),
        ),
      ),
    );
  }
}
