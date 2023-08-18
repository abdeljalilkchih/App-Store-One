part of '../utils/import-path/app_import_path.dart';

class MyControllerAuth extends ChangeNotifier {
  /// ---------------- Icon Eye (Password) -----------------
  IconData? myIconEye = MyAppMedia.showPass;
  bool isNotShowMyPass = true;

  /// [changeMyPassIcon] change state icon eye and show pass or  hidden
  void changeMyPassIcon() {
    if (isNotShowMyPass) {
      myIconEye = MyAppMedia.noShowPass;
      isNotShowMyPass = false;
    } else {
      myIconEye = MyAppMedia.showPass;
      isNotShowMyPass = true;
    }
    notifyListeners();
  }

  /// ---------------- Data User Auth -----------------
  MyModelUserAuth myDataUserAuth = MyModelUserAuth();

  /// [myCurrentPass] used to save password before match with confirm pass
  String myCurrentPass = '';
}
