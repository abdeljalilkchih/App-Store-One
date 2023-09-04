part of '../import-path/app_import_path.dart';

class MyAppRoutes {
  /// defined routes name key

  static const String pageSplash = 'MySplashPage';
  static const String pageLogin = 'MyLoginPage';
  static const String pageForgotPass = 'MyForgetPagePassword';
  static const String pageRegister = 'MyRegisterPage';
  static const String connectionFirebase = 'MyFireBaseConnection';
  static const String wrapper = 'MyWrapper';

  /// [routes] project all page
  static Map<String, WidgetBuilder> routes = {
    pageSplash: (context) => const MySplashPage(),
    pageLogin: (context) => const MyLoginPage(),
    pageRegister: (context) => const MyRegisterPage(),
    pageForgotPass: (context) => const MyForgetPagePassword(),
    connectionFirebase: (context) => const MyFireBaseConnection(),
    wrapper: (context) => const MyWrapper(),
  };
}
