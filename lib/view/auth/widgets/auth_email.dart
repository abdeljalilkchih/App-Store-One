part of '../../../utils/import-path/app_import_path.dart';

class MyAuthEmail extends StatelessWidget {
  const MyAuthEmail({super.key});

  @override
  Widget build(BuildContext context) {
    MyControllerAuth authEmail = Provider.of<MyControllerAuth>(context);
    return MyAuthTextFormField(
      myHint: MyAppLangKey.email,
      myLabel: MyAppLangKey.email,
      myBeforeIcon: MyAppMedia.mail,
      myKeyboardType: TextInputType.emailAddress,
      myValidator: MyAppValidator.isMyEmail,
      onMySaved: authEmail.myDataUserAuth.setMyEmail,
    );
  }
}
