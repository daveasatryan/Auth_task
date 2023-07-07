import 'package:flutter/material.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends BaseState<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: colors.whiteColor,
      child: const Text(AppStrings.mapText),
    ));
  }
}
