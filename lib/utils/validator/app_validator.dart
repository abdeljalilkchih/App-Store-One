part of '../import-path/app_import_path.dart';

class MyAppValidator {
  // message Error
  static final String messageEnterValue = MyAppLangKey.enterValue.tr();
  static final String messageCorrectEmail = MyAppLangKey.errorEmail.tr();
  static final String messageCorrectPass = MyAppLangKey.errorPass.tr();
  static final String messageConfirmPass = MyAppLangKey.errorConfirmPass.tr();
  static final String messagePrice = MyAppLangKey.errorPrice.tr();

  /// [isMyEmail]
  static String? isMyEmail(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return messageEnterValue;
    } else if (!validators.isEmail(value!.trim())) {
      return messageCorrectEmail;
    }
    return null;
  }

  /// [isMyPass]
  static String? isMyPass(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return messageEnterValue;
    } else if (!validators.isLength(value!.trim(), 6, 12)) {
      return messageCorrectPass;
    }
    return null;
  }

  /// [isConfirmMyPass]
  static String? isConfirmMyPass(String? value, String pass) {
    if (value?.trim().isEmpty ?? true) {
      return messageEnterValue;
    } else if (!validators.equals(value!.trim(), pass)) {
      return messageConfirmPass;
    }
    return null;
  }
}
