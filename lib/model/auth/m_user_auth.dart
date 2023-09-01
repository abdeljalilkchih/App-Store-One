part of '../../utils/import-path/app_import_path.dart';

class MyModelUserAuth {
  String? myEmail;
  String? myPassword;

  MyModelUserAuth({this.myEmail, this.myPassword});

  void setMyEmail(String? value) => myEmail = value;

  void setMyPass(String? value) => myPassword = value;

  @override
  String toString() =>
      'ModelUserAuth(MyEmail: $myEmail, MyPassword: $myPassword)';
}
