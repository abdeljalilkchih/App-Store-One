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

  /// ------------------ Firebase ----------------------
  FirebaseAuth myFirebaseAuth = FirebaseAuth.instance;
  bool loading = false;
  String errorMessage = '';

  /// [changeMyLoading] change value loading
  set changeMyLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  /// [setMyMessage] handle error auth
  set setMyMessage(String value) {
    errorMessage = value;
    notifyListeners();
  }

  /// [signInMyAuth]  sign and register (create new account)
  Future<User?> signInMyAuth({bool isLogin = true}) async {
    try {
      // run loading
      changeMyLoading = true;
      UserCredential userCredential = isLogin
          // login
          ? await myFirebaseAuth.signInWithEmailAndPassword(
              email: myDataUserAuth.myEmail!,
              password: myDataUserAuth.myPassword!)
          :
          // register
          await myFirebaseAuth.createUserWithEmailAndPassword(
              email: myDataUserAuth.myEmail!,
              password: myDataUserAuth.myPassword!);
      if (userCredential.user != null) {
        // ✅
        changeMyLoading = false;
        return userCredential.user;
      } else {
        // ❌
        changeMyLoading = false;
        setMyMessage = tr(MyAppLangKey.notAccount);
        return null;
      }
    } on SocketException {
      changeMyLoading = false;
      setMyMessage = MyAppLangKey.noInternet.tr();
      return null;
    } on FirebaseAuthException catch (error) {
      changeMyLoading = false;
      setMyMessage = error.message ?? '';
      return null;
    }
    // General
    catch (e) {
      changeMyLoading = false;
      setMyMessage = e.toString();
      return null;
    }
  }

  /// [resetMyPass] send email resent passwords
  Future<void> resetMyPass() async {
    try {
      changeMyLoading = true;
      await myFirebaseAuth.sendPasswordResetEmail(
          email: myDataUserAuth.myEmail!);
      changeMyLoading = false;
    } on SocketException {
      changeMyLoading = false;
      setMyMessage = MyAppLangKey.noInternet.tr();
    } on FirebaseAuthException catch (error) {
      changeMyLoading = false;
      setMyMessage = error.message ?? '';
    } catch (e) {
      changeMyLoading = false;
      setMyMessage = e.toString();
    }
  }

  /// [signMeOut] logout
  Future<void> signMeOut() async {
    await myFirebaseAuth.signOut();
  }

  /// userState check user and return data -> id or email or photo
  Stream<User?> get myUserState => myFirebaseAuth.authStateChanges();
}
