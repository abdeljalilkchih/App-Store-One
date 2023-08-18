part of '../../../utils/import-path/app_import_path.dart';

class MyAuthTextFormField extends StatefulWidget {
  const MyAuthTextFormField(
      {super.key,
// TextFormField
      this.myDefaultValue,
      this.myKeyboardType,
      this.myPass = false,
      this.myValidator,
      this.onMySaved,
      this.onMyChanged,
      // Decoration
      this.myHint,
      this.myLabel,
      this.myHelpText,
      this.showMyAfterIcon = false,
      this.myBeforeIcon});
  // properties for TextFormField
  final String? myDefaultValue;
  final TextInputType? myKeyboardType;
  final bool myPass;
  final String? Function(String?)? myValidator;
  final void Function(String?)? onMySaved;
  final void Function(String)? onMyChanged;
// properties for Decoration
  final String? myHint;
  final String? myLabel;
  final String? myHelpText;

  /// [myBeforeIcon] before text
  final IconData? myBeforeIcon;

  /// [showMyAfterIcon] after text
  final bool showMyAfterIcon;
  @override
  State<MyAuthTextFormField> createState() => _MyAuthTextFormFieldState();
}

class _MyAuthTextFormFieldState extends State<MyAuthTextFormField> {
  @override
  Widget build(BuildContext context) {
    /// [auth] provider handle change state password eye
    MyControllerAuth authShowPass = Provider.of<MyControllerAuth>(context);
    return TextFormField(
      cursorColor: MyAppTheme.myColorAuth(context),
      initialValue: widget.myDefaultValue,
      keyboardType: widget.myKeyboardType,
      obscureText: widget.myPass,
      obscuringCharacter: '✦',
      validator: widget.myValidator,
      onSaved: widget.onMySaved,
      onChanged: widget.onMyChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.myHint?.tr(),
        labelText: widget.myLabel?.tr(),
        helperText: widget.myHelpText?.tr(),
        helperMaxLines: 2,
        prefixIcon: Icon(widget.myBeforeIcon),
        suffixIcon: widget.showMyAfterIcon
            ? IconButton(
                onPressed: () => authShowPass.changeMyPassIcon(),
                icon: Icon(authShowPass.myIconEye))
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MyAppDime.l.w),
          borderSide: BorderSide(color: MyAppTheme.myColorAuth(context)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MyAppDime.l.w),
          borderSide: BorderSide(color: MyAppTheme.myColorAuth(context)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            MyAppDime.l.w,
          ),
          borderSide: BorderSide(
            color: MyAppTheme.myBorderErrorTheme(context),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(MyAppDime.l.w),
          borderSide: BorderSide(color: MyAppTheme.myBorderErrorTheme(context)),
        ),
        errorMaxLines: 2,
        errorStyle: MyAppTheme.bMedium(context)
            ?.copyWith(color: MyAppTheme.myTextErrorTheme(context)),
      ),
    );
  }
}
