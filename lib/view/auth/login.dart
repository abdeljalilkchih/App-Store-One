part of '../../utils/import-path/app_import_path.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});
  static GlobalKey<FormState> myFormKeyLogin = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    MyControllerAuth authEmail = Provider.of<MyControllerAuth>(context);
    return Scaffold(
        appBar: const MyAuthAppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(MyAppDime.md.w),
          child: Form(
            key: myFormKeyLogin,
            child: Column(
              children: [
                /// [AuthLogo]
                const MyAuthLogo(),
                // space
                MyAppDime.spaceAuth,

                /// [Email]
                const MyAuthEmail(),
                MyAppDime.spaceAuth,
                const MyAuthPass(),
                // space
                MyAppDime.spaceAuth,

                /// [MyAuthForgotPass] navigator to page forgot pass
                const MyAuthForgotPass(),

                /// [MyAuthButton] custom button for auth
                MyAuthButton(
                    myTitle: MyAppLangKey.login,
                    onMyClick: () {
                      if (myFormKeyLogin.currentState?.validate() ?? false) {
                        dev.log('Form Validate is True',
                            name: 'Form Validate Login');
                        // active function save include textFormField
                        myFormKeyLogin.currentState?.save();
                        dev.log(authEmail.myDataUserAuth.toString(),
                            name: 'Form Validate Login');
                      } else {
                        dev.log('Form Validate is false',
                            name: 'Form Validate Login');
                      }
                    }),

                /// [AuthFooter]
                MyAuthFooter(
                  myFirst: MyAppLangKey.notAccount,
                  mySecond: MyAppLangKey.register,
                  onMyClick: () {
                    dev.log('My Navigator Register');
                    myNavigatorRegister(context);
                  },
                ),
              ],
            ),
          ),
        )));
  }

  /// [myNavigatorRegister]
  void myNavigatorRegister(BuildContext context) {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (context) => const MyRegisterPage());
    Navigator.push(context, route);
  }
}
