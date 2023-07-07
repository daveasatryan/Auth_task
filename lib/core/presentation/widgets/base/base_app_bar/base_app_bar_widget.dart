import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_auth_app/core/presentation/utilities/typography/text_theme.dart';
import 'package:task_auth_app/core/presentation/widgets/base/base_stateless_widget.dart';

class BaseAppBarWidget extends BaseStatelessWidget
    implements PreferredSizeWidget {
  BaseAppBarWidget({
    super.key,
    required this.title,
    this.textStyle,
  });
  final String title;
  final TextStyle? textStyle;
  @override
  Widget baseBuild(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: colors.whiteColor,
      centerTitle: true,
      title: Text(
        title,
        style: textStyle ??
            fonts.poppinsRegular.copyWith(
              fontSize: 15,
            ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.sp);
}
