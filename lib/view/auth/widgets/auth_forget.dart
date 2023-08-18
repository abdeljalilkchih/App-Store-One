part of '../../../utils/import-path/app_import_path.dart';

class MyAuthForgotPass extends StatelessWidget {
  const MyAuthForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: () {
          dev.log('My Navigator to forgot pass');
          MaterialPageRoute myRoute = MaterialPageRoute(
              builder: (context) => const MyForgetPagePassword());
          Navigator.push(context, myRoute);
        },
        child: Text(
          MyAppLangKey.forgotPass.tr(),
          style: MyAppTheme.bLarge(context)?.copyWith(
            decoration: TextDecoration.underline,
            color: MyAppTheme.myColorAuth(context),
          ),
        ),
      ),
    );
  }
}
