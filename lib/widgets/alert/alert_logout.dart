part of '../../utils/import-path/app_import_path.dart';

class MyAlertLogout extends StatelessWidget {
  const MyAlertLogout({super.key});

  @override
  Widget build(BuildContext context) {
    /// [auth] is provider handle change state show password
    MyControllerAuth authLogoutAlert = Provider.of<MyControllerAuth>(context);
    return AlertDialog.adaptive(
      title: Text('${MyAppLangKey.logout.tr()} ?',
          style: GoogleFonts.racingSansOne()),
      content: Text(MyAppLangKey.messageLogout.tr(),
          style: GoogleFonts.racingSansOne()),
      actions: [
        // cancel
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(MyAppLangKey.cancel.tr(),
              style: GoogleFonts.racingSansOne()),
        ),
        // logout
        OutlinedButton(
          onPressed: () {
            authLogoutAlert.signMeOut();
            Navigator.pop(context);
          },
          child: Text(MyAppLangKey.logout.tr(),
              style: GoogleFonts.racingSansOne()),
        ),
      ],
      actionsAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
