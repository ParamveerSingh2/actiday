import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/app_bar/app_bar_text.dart';
import 'package:actiday/ui/utils/widgets/app_bar/trailing_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clrWhite,
      appBar: AppBar(
        backgroundColor: AppColors.clrF0F5F9,
        toolbarHeight: 100.w,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 29.h, bottom: 29.h, left: 100.w),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  SvgConstants.svgAppIcon,
                  height: 41.sp,
                  width: 150.5.sp,
                ),
              ),
            ),
            Spacer(),
            AppBarText(title: 'Home', color: AppColors.clr131414),
            AppBarText(title: 'Bookings', color: AppColors.clrB5B5B5),
            AppBarText(title: 'Explore', color: AppColors.clrB5B5B5),
            AppBarText(title: 'Favorite', color: AppColors.clrB5B5B5),
            AppBarText(title: 'fwe', color: AppColors.clrB5B5B5),
            Spacer(),
            TrailingIcon(icon: SvgConstants.svgSearchIcon),
            TrailingIcon(icon: SvgConstants.svgNotificationIcon),
            TrailingIcon(icon: SvgConstants.svgProfileIcon),
            SizedBox(width: 81.sp,)
          ],
        ),
      ),
      body: Column(),
    );
  }
}


