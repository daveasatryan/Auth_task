import 'dart:async';
// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_auth_app/core/data/utilities/injection/injection.dart';
import 'package:task_auth_app/core/data/utilities/log/logger_service.dart';
import 'package:task_auth_app/core/data/utilities/storage/preferences_manager.dart';
import 'package:task_auth_app/core/presentation/application.dart';
import 'package:task_auth_app/core/presentation/utilities/color/app_colors.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
 
  setPathUrlStrategy();
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();
      await PreferencesManager.initPreferences();
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: AppColors().mainAppColor,
          statusBarBrightness: Brightness.dark,
        ),
      );
      runApp(
        const Application(),
      );
    },
    (error, stackTrace) {
      LoggerService().e(
        'Error is $error, stack $stackTrace',
      );
    },
  );
}