import 'package:flutter/material.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends BaseState<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: colors.whiteColor,
      child: const Text(AppStrings.favoritesText),
    ));
  }
}
