import 'package:task_auth_app/core/presentation/utilities/assets/app_assets.dart';
import 'package:task_auth_app/core/presentation/utilities/routes/app_routes.dart';
import 'package:task_auth_app/core/presentation/utilities/strings/app_strings.dart';

enum BottomNavEnum {
  dashboard,
  map,
  favorite,
  profile;

  String get svgIcon {
    switch (this) {
      case BottomNavEnum.dashboard:
        return AppAssets.tapeIcon;
      case BottomNavEnum.map:
        return AppAssets.mapIcon;
      case BottomNavEnum.favorite:
        return AppAssets.favoriteIcon;
      case BottomNavEnum.profile:
        return AppAssets.profileIcon;
    }
  }

  String get title {
    switch (this) {
      case BottomNavEnum.dashboard:
        return AppStrings.tapeText;
      case BottomNavEnum.map:
        return AppStrings.mapText;
      case BottomNavEnum.favorite:
        return AppStrings.favoritesText;
      case BottomNavEnum.profile:
        return AppStrings.profileText;
    }
  }

  String get page {
    switch (this) {
      case BottomNavEnum.dashboard:
        return AppRoutes.dashboardRoute;
      case BottomNavEnum.map:
        return AppRoutes.mapRoute;
      case BottomNavEnum.favorite:
        return AppRoutes.favoriteRoute;
      case BottomNavEnum.profile:
        return AppRoutes.profileRoute;
    }
  }
}
