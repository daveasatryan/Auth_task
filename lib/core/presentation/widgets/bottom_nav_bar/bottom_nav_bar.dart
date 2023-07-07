// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_auth_app/core/data/enums/bottom_nav_enum.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_stateless_widget.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/bloc/bottom_nav_bar_state.dart';
import 'package:task_auth_app/core/presentation/widgets/bottom_nav_bar/widgets/bottom_nav_bar_item.dart';

class BottomNavBar extends BaseStatelessWidget {
  BottomNavBar({super.key});

  @override
  Widget baseBuild(BuildContext context) {
    return Container(
      height: 72.sp,
      // decoration: BoxDecoration(
      //   //color: colors.hintColor,
      //   borderRadius: BorderRadius.circular(100.sp),
      // ),
      margin: EdgeInsets.only(left: 12.sp, right: 12.sp, bottom: 12.sp),
      child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              BottomNavBarItem(type: BottomNavEnum.dashboard),
              BottomNavBarItem(type: BottomNavEnum.map),
              BottomNavBarItem(type: BottomNavEnum.favorite),
              BottomNavBarItem(type: BottomNavEnum.profile),
            ],
          ),
    );
  }
}
