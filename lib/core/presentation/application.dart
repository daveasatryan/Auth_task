import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:task_auth_app/core/data/utilities/bloc/bloc_factory.dart';
import 'package:task_auth_app/core/presentation/utilities/provider/user_provider.dart';
import 'package:task_auth_app/core/presentation/utilities/routes/app_routes.dart';
import 'package:task_auth_app/core/presentation/views/splash/splash_screen.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_state.dart';

class Application extends StatefulWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends BaseState<Application> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => BlocFactory(getIt: GetIt.instance),
        ),
       
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(375, 813),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, _) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                defaultTransition: Transition.noTransition,
                transitionDuration: const Duration(seconds: 0),
                initialRoute: AppRoutes.splashRoute,
                onUnknownRoute: (settings) =>
                    MaterialPageRoute(builder: (_) => const SplashScreen()),
                getPages: AppRoutes.getRoutes,
                navigatorKey: Get.nestedKey(AppRoutes.rootNavigationKey),
                theme: ThemeData(
                  highlightColor: colors.transparent,
                  splashColor: colors.transparent,
                  checkboxTheme: CheckboxThemeData(
                    checkColor: MaterialStateProperty.all(
                      colors.mainAppColor,
                    ),
                    fillColor: MaterialStateProperty.all(colors.whiteColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5.sp,
                      ),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(
                        width: 2,
                        color: colors.mainAppColor,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
