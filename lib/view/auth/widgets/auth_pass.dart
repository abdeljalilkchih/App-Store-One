part of '../../../utils/import-path/app_import_path.dart';

class MyAuthPass extends StatelessWidget {
  const MyAuthPass({super.key, this.iSmyConfirm = false});
  final bool iSmyConfirm;
  @override
  Widget build(BuildContext context) {
    /// [authPass] is provider handle change state show password
    MyControllerAuth authPass = Provider.of<MyControllerAuth>(context);
    return MyAuthTextFormField(
      myHint: iSmyConfirm ? MyAppLangKey.confirmPass : MyAppLangKey.pass,
      myLabel: iSmyConfirm ? MyAppLangKey.confirmPass : MyAppLangKey.pass,
      myHelpText: MyAppLangKey.errorPass,
      myBeforeIcon: MyAppMedia.pass,
      showMyAfterIcon: true,
      myPass: authPass.isNotShowMyPass,
      myValidator: (value) {
        return iSmyConfirm
            ? MyAppValidator.isConfirmMyPass(value, authPass.myCurrentPass)
            : MyAppValidator.isMyPass(value);
      },
      onMySaved: authPass.myDataUserAuth.setMyPass,
      onMyChanged: (value) =>
          iSmyConfirm ? null : authPass.myCurrentPass = value,
    );
  }
}
