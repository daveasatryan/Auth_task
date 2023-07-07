import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:get/get.dart';

class ValidationUtils {
  static bool isValidPassword(String? password) {
    if (password.isNullOrEmpty()) return false;
    final regexp = RegExp('^'
        '.{8,}'
        '\$');
    return regexp.hasMatch(password ?? '');
  }

  static bool isValidEmail(String? email) => GetUtils.isEmail(email ?? '');
}
