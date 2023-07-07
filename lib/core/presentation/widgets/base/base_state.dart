import 'package:flutter/material.dart';
import 'package:task_auth_app/core/presentation/utilities/color/app_colors.dart';
import 'package:task_auth_app/core/presentation/utilities/color/color_scheme.dart';
import 'package:task_auth_app/core/presentation/widgets/app_error_widget.dart';
import 'package:task_auth_app/core/presentation/widgets/app_loading.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  bool _isLoaderShown = false;

  AppColors get colors => Theme.of(context).colorScheme.appColors;

  TextTheme get fonts => Theme.of(context).textTheme;

  Size get sizes => MediaQuery.of(context).size;

  void showErrorDialog(
    BuildContext context, {
    required String msg,
    String? title,
    String? buttonText,
    Function? onPressed,
    bool isBarrierDismissible = false,
    bool showButton = true,
  }) {
    showDialog(
      context: context,
      barrierColor: colors.barrierColor,
      barrierDismissible: isBarrierDismissible,
      builder: (context) {
        return AppErrorWidget(
          title: title,
          buttonText: buttonText,
          message: msg,
          showButton: showButton,
          onPressed: () {
            onPressed?.call();
          },
        );
      },
    );
  }

  void showLoading(BuildContext context) {
    hideLoading(context);
    _isLoaderShown = true;
    showDialog(
      barrierDismissible: false,
      barrierColor: colors.barrierColor,
      context: context,
      builder: (context) {
        return const AppLoadingWidget();
      },
    );
  }

  void hideLoading(BuildContext context) {
    if (_isLoaderShown) {
      Navigator.pop(context);
      _isLoaderShown = false;
    }
  }

  void hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    hideLoading(context);
    super.dispose();
  }
}
