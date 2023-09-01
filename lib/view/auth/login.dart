part of '../../utils/import-path/app_import_path.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});
  static GlobalKey<FormState> myFormKeyLogin = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    MyControllerAuth authLogin = Provider.of<MyControllerAuth>(context);
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
                authLogin.loading
                    ? const Center(child: CircularProgressIndicator())
                    : MyAuthButton(
                        myTitle: MyAppLangKey.login,
                        onMyClick: () async {
                          try {
                            if (myFormKeyLogin.currentState?.validate() ??
                                false) {
                              dev.log('Form Validate is True',
                                  name: 'Form Validate Login');

                              // active function save include textFormField
                              myFormKeyLogin.currentState?.save();
                              dev.log(authLogin.myDataUserAuth.toString(),
                                  name: 'Form Validate Login');
                              if (await authLogin.signInMyAuth() != null) {
                                dev.log('login account successfully 😎');
                              } else {
                                dev.log(authLogin.errorMessage,
                                    name: 'when login account 🥲');
                              }
                            } else {
                              dev.log('Form Validate is false',
                                  name: 'Form Validate Login');
                            }
                          } catch (e) {
                            dev.log('error : ${e.toString()}', name: 'login');
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
    // MaterialPageRoute route =
    //     MaterialPageRoute(builder: (context) => const MyRegisterPage());
    // Navigator.push(context, route);
    Navigator.pushNamed(context, MyAppRoutes.pageRegister);
  }
}
