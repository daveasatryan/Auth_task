import 'package:flutter/material.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends BaseState<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: colors.whiteColor,
      child: const Text(AppStrings.tapeText),
    ));
  }
}
