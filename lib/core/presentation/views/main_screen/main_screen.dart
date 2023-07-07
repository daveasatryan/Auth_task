import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:task_auth_app/core/data/utilities/bloc/bloc_factory.dart';
import 'package:task_auth_app/core/presentation/utilities/routes/app_routes.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';
import 'package:task_auth_app/core/presentation/views/dashboard_screen/dashboard_screen.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_app_bar/base_app_bar_widget.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bloc/bottom_nav_bar_state.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BaseState<MainScreen> {
  AppStrings get appStrings => AppStrings();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          context.read<BlocFactory>().create<BottomNavBarBloc>(),
      child: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
        builder: (context, state) {
          return Scaffold(
            appBar: BaseAppBarWidget(
              title: state.page.title,
            ),
            body: Stack(
              children: [
                Navigator(
                  key: Get.nestedKey(AppRoutes.mainNavigationKey),
                  initialRoute: AppRoutes.dashboardRoute,
                  onGenerateRoute: (settings) {
                    return GetPageRoute(
                      page: () =>
                          AppRoutes.mainRoutes
                              .firstWhereOrNull(
                                  (route) => route.name == settings.name)
                              ?.page() ??
                          const DashboardScreen(),
                      settings: settings,
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomNavBar(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
