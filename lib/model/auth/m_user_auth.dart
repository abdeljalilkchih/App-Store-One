part of '../../utils/import-path/app_import_path.dart';

class MyModelUserAuth {
  String? email;
  String? password;

  MyModelUserAuth({this.email, this.password});

  void setMyEmail(String? value) => email = value;

  void setMyPass(String? value) => password = value;

  @override
  String toString() => 'ModelUserAuth(email: $email, password: $password)';
}
