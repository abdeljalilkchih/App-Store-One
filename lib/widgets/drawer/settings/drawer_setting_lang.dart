part of '../../../utils/import-path/app_import_path.dart';

class MyDrawerSettingLang extends StatefulWidget {
  const MyDrawerSettingLang({super.key});

  @override
  State<MyDrawerSettingLang> createState() => _MyDrawerSettingLang();
}

class _MyDrawerSettingLang extends State<MyDrawerSettingLang> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      /// provider lang
      MyControllerLanguage pMyLang =
          Provider.of<MyControllerLanguage>(context, listen: false);

      /// can access context include initState
      pMyLang.checkMyLang(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    /// provider lang
    MyControllerLanguage pMyLang = Provider.of<MyControllerLanguage>(context);
    return DropdownButton(
        value: pMyLang.myLang,
        items: pMyLang.myItemLang
            .map((myLang) => DropdownMenuItem(
                value: myLang, child: Text(myLang.myNameLang.tr())))
            .toList(),
        onChanged: (MyChoiceLang? myValue) {
          pMyLang.changeMyLang(context, myLang: myValue ?? MyChoiceLang.eng);
        });
  }
}
