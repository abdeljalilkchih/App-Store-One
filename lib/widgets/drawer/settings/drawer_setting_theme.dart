part of '../../../utils/import-path/app_import_path.dart';

class MyDrawerSettingTheme extends StatelessWidget {
  const MyDrawerSettingTheme({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerMyTheme myProviderTheme = Provider.of<ControllerMyTheme>(context);
    return Switch(
        value: myProviderTheme.switchMyTheme,
        onChanged: myProviderTheme.changeMyTheme);
  }
}
