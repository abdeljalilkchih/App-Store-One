part of '../../utils/import-path/app_import_path.dart';

class MyAlertDelete extends StatelessWidget {
  const MyAlertDelete({super.key, required this.myData});
  final MyModelDBApp myData;
  @override
  Widget build(BuildContext context) {
    MyControllerDB myDatabase = Provider.of<MyControllerDB>(context);

    return AlertDialog.adaptive(
      title:
          Text('Delete ${myData.name} ?', style: GoogleFonts.racingSansOne()),
      content: Text('Are you sure to Delete ${myData.name} app ??',
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
          onPressed: () async {
            if (await myDatabase.unInstallApp(myData)) {
              myDatabase.dataList?.remove(myData);
            }
            Navigator.pop(context);
          },
          child: Text(MyAppLangKey.delete.tr(),
              style: GoogleFonts.racingSansOne()),
        )
      ],
      actionsAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
