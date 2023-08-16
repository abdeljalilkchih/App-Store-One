part of '../../utils/import-path/app_import_path.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAuthAppBar(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            /// [AuthLogo]
            const MyAuthLogo(),

            /// [Email]
            MyAuthTextFormField(
              myHint: MyAppLangKey.email,
              myLabel: MyAppLangKey.email,
              myHelpText: MyAppLangKey.hintResetPass,
              myBeforeIcon: MyAppMedia.mail,
              myAfterIcon: MyAppMedia.showPass,
              myKeyboardType: TextInputType.emailAddress,
              myPass: true,
            ),

            /// [MyAuthForgotPass] navigator to page forgot pass
            const MyAuthForgotPass(),

            /// [MyAuthButton] custom button for auth
            MyAuthButton(myTitle: MyAppLangKey.login, onMyClick: () {}),

            /// [AuthFooter]
            MyAuthFooter(
              myFirst: MyAppLangKey.notAccount,
              mySecond: MyAppLangKey.register,
              onMyClick: () {
                dev.log('My Navigator Register');
              },
            ),
          ],
        )));
  }
}
