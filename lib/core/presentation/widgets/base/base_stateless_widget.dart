import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task_auth_app/core/presentation/utilities/assets/app_assets.dart';
import 'package:task_auth_app/core/presentation/utilities/color/app_colors.dart';
import 'package:task_auth_app/core/presentation/utilities/color/color_scheme.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';
import 'package:task_auth_app/core/presentation/widgets/app_error_widget.dart';
import 'package:task_auth_app/core/presentation/widgets/app_loading.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  bool _isLoaderShown = false;

  BaseStatelessWidget({super.key});

  AppColors get colors => Theme.of(context).colorScheme.appColors;

  TextTheme get fonts => Theme.of(context).textTheme;

  Size get sizes => MediaQuery.of(context).size;

  AppStrings get appStrings => AppStrings();

  AppAssets get appAssets => AppAssets();


  late BuildContext context;

  void showErrorDialog(
    BuildContext context, {
    required String msg,
    String? title,
    String? buttonText,
    Function? onPressed,
    bool isBarrierDismissible = false,
  }) {
    hideLoading(context);
    showDialog(
      context: context,
      barrierColor: colors.barrierColor,
      barrierDismissible: isBarrierDismissible,
      builder: (context) {
        return AppErrorWidget(
          title: title,
          buttonText: buttonText,
          message: msg,
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

  Widget baseBuild(BuildContext context);

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return baseBuild(context);
  }
}
