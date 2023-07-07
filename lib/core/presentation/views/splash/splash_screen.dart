import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_auth_app/core/data/utilities/bloc/bloc_factory.dart';
import 'package:task_auth_app/core/presentation/utilities/routes/app_routes.dart';
import 'package:task_auth_app/core/presentation/utilities/typography/text_theme.dart';
import 'package:task_auth_app/core/presentation/views/splash/bloc/splash_bloc.dart';
import 'package:task_auth_app/core/presentation/views/splash/bloc/splash_event.dart';
import 'package:task_auth_app/core/presentation/views/splash/bloc/splash_state.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseState<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  void navigateToScreens() {
    Timer(
      const Duration(seconds: 2),
      () {
        AppRoutes.goTo(AppRoutes.signinRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    hideLoading(context);
    return BlocProvider(
      create: (context) => context.read<BlocFactory>().create<SplashBloc>()
        ..add(const SplashEvent.getUser()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () => navigateToScreens(),
            error: (msg) => showErrorDialog(context, msg: msg),
          );
        },
        child: Scaffold(
          backgroundColor: colors.blueColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Hi",
                  style: fonts.poppinsRegular
                      .copyWith(fontSize: 30, color: colors.whiteColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
