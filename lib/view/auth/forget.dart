part of '../../utils/import-path/app_import_path.dart';

class MyForgetPagePassword extends StatelessWidget {
  const MyForgetPagePassword({super.key});
  static GlobalKey<FormState> myFormKeyForget = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    MyControllerAuth authForget = Provider.of<MyControllerAuth>(context);
    return Scaffold(
        appBar: const MyAuthAppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(MyAppDime.md.w),
          child: Form(
            key: myFormKeyForget,
            child: Column(
              children: [
                /// [AuthLogo]
                const MyAuthLogo(),
                // space
                MyAppDime.spaceAuth,
                Text(
                  MyAppLangKey.hintResetPass.tr(),
                  textAlign: TextAlign.center,
                  style: MyAppTheme.bMedium(context)?.copyWith(height: 1.5),
                ),
                // space
                MyAppDime.spaceAuth,

                /// [Email]
                const MyAuthEmail(),
                // space
                MyAppDime.spaceAuth,

                /// [MyAuthButton] custom button for auth
                MyAuthButton(
                    myTitle: MyAppLangKey.resetPassword,
                    onMyClick: () {
                      if (myFormKeyForget.currentState?.validate() ?? false) {
                        dev.log('Form Validate is True',
                            name: 'Form Validate Forget');
                        // active function save include textFormField
                        myFormKeyForget.currentState?.save();
                        dev.log(authForget.myDataUserAuth.toString(),
                            name: 'Form Validate Forget');
                      } else {
                        dev.log('Form Validate is false',
                            name: 'Form Validate Forget');
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
