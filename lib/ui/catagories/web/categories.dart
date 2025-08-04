import 'package:actiday/framework/controller/category/categoriy_controller.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_category.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Row(
            children: [
              CommonText(
                title: 'Categories',
                fontFamily: 'Poppins',
                fontSize: 24.sp,
                color: AppColors.clr131414,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15.w, top: 30.h),
              child: CommonCategory(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w500,
                fontFamily: 'Rubik',
                title: 'Fitness',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.w, top: 30.h),
              child: CommonCategory(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w500,
                fontFamily: 'Rubik',
                title: 'Spa & Beauty',
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Row(
            children: [
              CommonText(
                title: 'Top Classes',
                fontFamily: 'Poppins',
                fontSize: 24.sp,
                color: AppColors.clr131414,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 899.w),
              CommonText(
                title: 'See All',
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                color: AppColors.clrB5B5B5,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
