part of '../../utils/import-path/app_import_path.dart';

class MyAlertLogout extends StatelessWidget {
  const MyAlertLogout({super.key});

  @override
  Widget build(BuildContext context) {
    /// [auth] is provider handle change state show password
    MyControllerAuth authLogoutAlert = Provider.of<MyControllerAuth>(context);
    return AlertDialog.adaptive(
      title: Text('${MyAppLangKey.logout.tr()} ?'),
      content: Text(MyAppLangKey.messageLogout.tr()),
      actions: [
        // cancel
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(MyAppLangKey.cancel.tr()),
        ),
        // logout
        OutlinedButton(
          onPressed: () {
            authLogoutAlert.signMeOut();
            Navigator.pop(context);
          },
          child: Text(MyAppLangKey.logout.tr()),
        )
      ],
      actionsAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
