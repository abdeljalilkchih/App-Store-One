part of '../../../utils/import-path/app_import_path.dart';

class MyDrawerSettingLang extends StatefulWidget {
  const MyDrawerSettingLang({super.key});

  @override
  State<MyDrawerSettingLang> createState() => _MyDrawerSettingLang();
}

class _MyDrawerSettingLang extends State<MyDrawerSettingLang> {
  String selectedLang = mYkEng;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: selectedLang,
        items: [
          DropdownMenuItem(
              value: mYkEng, child: const Text(MyAppLangKey.english).tr()),
          DropdownMenuItem(
              value: mYkArb, child: const Text(MyAppLangKey.arabic).tr())
        ],
        onChanged: (myValue) {
          dev.log('value of my choice $myValue');
          selectedLang = myValue ?? mYkEng;
          setState(() {});
        });
  }
}
