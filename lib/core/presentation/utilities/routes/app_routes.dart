import 'package:get/get.dart';
import 'package:task_auth_app/core/presentation/views/dashboard_screen/dashboard_screen.dart';
import 'package:task_auth_app/core/presentation/views/favorite_screen/favorite_screen.dart';
import 'package:task_auth_app/core/presentation/views/main_screen/main_screen.dart';
import 'package:task_auth_app/core/presentation/views/map_screen/map_screen.dart';
import 'package:task_auth_app/core/presentation/views/profile_screen/profile_screen.dart';
import 'package:task_auth_app/core/presentation/views/sign_in/sign_in_screen.dart';
import 'package:task_auth_app/core/presentation/views/splash/splash_screen.dart';

class AppRoutes {
  static const splashRoute = '/';
  static const signinRoute = '/signin';
  static const mainRoute = '/main';

//main navigation routes
  static const profileRoute = '$mainRoute/profile';
  static const dashboardRoute = '$mainRoute/dashboard';
  static const favoriteRoute = '$mainRoute/favorite';
  static const mapRoute = '$mainRoute/map';

  static const rootNavigationKey = 0;
  static const mainNavigationKey = 1;
  static final List<GetPage> _appRoutes = [
    GetPage(
      name: splashRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: mainRoute,
      page: () => const MainScreen(),
    ),
    GetPage(
      name: signinRoute,
      page: () => const SignInScreen(),
    ),
  ];

  static final List<GetPage> _mainRoutes = [
    GetPage(
      name: profileRoute,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: dashboardRoute,
      page: () => const DashboardScreen(),
    ),
    GetPage(
      name: favoriteRoute,
      page: () => const FavoriteScreen(),
    ),
    GetPage(
      name: mapRoute,
      page: () => const MapScreen(),
    ),
  ];

  static List<GetPage> get getRoutes => _appRoutes;
  static List<GetPage> get mainRoutes => _mainRoutes;

  static Future<T?>? goTo<T>(
    String page, {
    bool hasBack = true,
    dynamic arguments,
    int? id = rootNavigationKey,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) {
    if (hasBack) {
      return Get.toNamed(
        page,
        arguments: arguments,
        id: id,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
      );
    }

    return Get.offAllNamed(
      page,
      arguments: arguments,
      parameters: parameters,
      id: id,
    );
  }

  static Future<T?>? goToNested<T>(
    String page, {
    bool hasBack = true,
    dynamic arguments,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      goTo(
        page,
        hasBack: hasBack,
        arguments: arguments,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        id: mainNavigationKey,
      );

  static void back<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
    int? id = rootNavigationKey,
  }) {
    Get.back(
      result: result,
      closeOverlays: closeOverlays,
      canPop: canPop,
      id: id,
    );
  }

  static void backNested<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
  }) =>
      back(
        result: result,
        closeOverlays: closeOverlays,
        canPop: canPop,
        id: mainNavigationKey,
      );
}
