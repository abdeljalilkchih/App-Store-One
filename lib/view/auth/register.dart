part of '../../utils/import-path/app_import_path.dart';

class MyRegisterPage extends StatelessWidget {
  const MyRegisterPage({super.key});
  static GlobalKey<FormState> myFormKeyRegister = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    MyControllerAuth myAuthRegister = Provider.of<MyControllerAuth>(context);
    return Scaffold(
        appBar: const MyAuthAppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(MyAppDime.md.w),
          child: Form(
            key: myFormKeyRegister,
            child: Column(
              children: [
                /// [AuthLogo]
                const MyAuthLogo(),
                // space
                MyAppDime.spaceAuth,

                /// [Email]
                const MyAuthEmail(),
                MyAppDime.spaceAuth,

                /// [password]
                const MyAuthPass(),
                // space
                MyAppDime.spaceAuth,

                /// [confirm password]
                const MyAuthPass(
                  iSmyConfirm: true,
                ),

                /// [MyAuthButton] custom button for auth
                /// [AuthButton] custom button for auth
                myAuthRegister.loading
                    ? const Center(child: CircularProgressIndicator())
                    : MyAuthButton(
                        myTitle: MyAppLangKey.register,
                        onMyClick: () async {
                          try {
                            if (myFormKeyRegister.currentState?.validate() ??
                                false) {
                              dev.log('Form Validate is True',
                                  name: 'Form Validate Register');
                              // active function save include textFormField
                              myFormKeyRegister.currentState?.save();
                              dev.log(myAuthRegister.myDataUserAuth.toString(),
                                  name: 'Form Validate Register');
                              if (await myAuthRegister.signInMyAuth(
                                      isLogin: false) !=
                                  null) {
                                dev.log('create account successfully 😎');
                              } else {
                                dev.log(myAuthRegister.errorMessage,
                                    name: 'when create new account  🥲');
                              }
                            } else {
                              dev.log('Form Validate is false',
                                  name: 'Form Validate Register');
                            }
                          } catch (e) {
                            dev.log('error : ${e.toString()}',
                                name: 'My Register Page');
                          }
                        }),

                /// [AuthFooter]
                MyAuthFooter(
                  myFirst: MyAppLangKey.haveAccount,
                  mySecond: MyAppLangKey.login,
                  onMyClick: () {
                    dev.log('My Navigator Register');
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        )));
  }
}
