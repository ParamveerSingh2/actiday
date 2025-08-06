import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenAppBarMobile extends StatelessWidget {
  const HomeScreenAppBarMobile({super.key});

  @override
    Widget build(BuildContext context) {
    // app bar for mobile home screen
      return Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                SvgConstants.svgCategoryIcon,
                height: 24.h,
                width: 24.w,
              ),
              Spacer(),
              SvgPicture.asset(
                SvgConstants.svgLocationIcon,
                height: 12.h,
                width: 12.w,
                color: AppColors.clr131414,
              ),
              SizedBox(width: 3,),
              CommonText(title: 'Abu Dhabi, UAE',fontWeight: FontWeight.w500,fontFamily: 'Rubik',fontSize: 12.sp,color: AppColors.clr010101,),
              Spacer(),
              SvgPicture.asset(
                SvgConstants.svgNotificationIcon,
                height: 24.h,
                width: 24.w,
              ),
            ],
          ),
        ],
      );
    }
  }
