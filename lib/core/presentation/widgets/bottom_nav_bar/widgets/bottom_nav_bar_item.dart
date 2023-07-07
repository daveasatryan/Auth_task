import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_auth_app/core/data/enums/bottom_nav_enum.dart';
import 'package:task_auth_app/core/presentation/utilities/routes/app_routes.dart';
import 'package:task_auth_app/core/presentation/utilities/typography/text_theme.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_stateless_widget.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bloc/bottom_nav_bar_event.dart';

class BottomNavBarItem extends BaseStatelessWidget {
  BottomNavBarItem({
    super.key,
    required this.type,
  });

  final BottomNavEnum type;

  @override
  Widget baseBuild(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<BottomNavBarBloc>().add(
              BottomNavBarEvent.changePage(type),
            );
        AppRoutes.goToNested(type.page, hasBack: false);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(
            type.svgIcon,
            width: 16.sp,
            height: 16.sp,
            colorFilter: ColorFilter.mode(
              context.read<BottomNavBarBloc>().isPageSelected(type)
                  ? colors.blueColor
                  : colors.black,
              BlendMode.srcIn,
            ),
          ),
          Text(
            type.title,
            style: fonts.poppinsRegular.copyWith(
              fontSize: 10.sp,
              color: context.read<BottomNavBarBloc>().isPageSelected(type)
                  ? colors.blueColor
                  : colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
