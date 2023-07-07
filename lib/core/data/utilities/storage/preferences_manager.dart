import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_auth_app/core/data/models/user/user_model.dart';
import 'package:task_auth_app/core/data/utilities/helper.dart';

class PreferencesManager {
  PreferencesManager._();
  static late SharedPreferences _pref;

  static Future<void> initPreferences() async {
    _pref = await SharedPreferences.getInstance();
  }

  /// keys
  static const _token = 'token';
  static const _user = 'user';
  static const _rememberMe = 'remember_me';

  static String? get token => _pref.getString(_token);
  static bool get rememberMe => _pref.getBool(_rememberMe) ?? false;

  static set rememberMe(
    bool? value,
  ) {
    _pref.setBool(_rememberMe, value ?? true);
  }

  static set token(String? value) {
    if (value == null) {
      _pref.remove(_token);
      return;
    }
    _pref.setString(_token, value);
  }

  static set userData(UserModel? userModel) {
    userModel?.tokens?.accessToken?.let((t) {
      token = t;
    });
    user = userModel?.copyWith(tokens: null);
  }

  static void closeApp() {
    if (!rememberMe) {
      clearUserData();
    }
  }

  static void clearUserData() {
    token = null;
    userData = null;
  }

  static UserModel? get user {
    String? user = _pref.getString(_user);

    if (user != null) {
      return UserModel.fromJson(jsonDecode(user));
    } else {
      return null;
    }
  }

  static set user(UserModel? user) {
    if (user == null) {
      _pref.remove(_user);
      return;
    }
    _pref.setString(_user, jsonEncode(user));
  }
}
