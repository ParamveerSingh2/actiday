import 'package:actiday/ui/gym_details/mobile/gym_detail_mobile_ui.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_category_mobile.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesMobileUi extends StatelessWidget {
  const CategoriesMobileUi({super.key});

  @override
  Widget build(BuildContext context) {
    // Categories section for mobile
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Row(
            children: [
              CommonText(
                title: 'Categories',
                fontFamily: 'Poppins',
                fontSize: 16.sp,
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
              child: CommonCategoryMobile(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w500,
                fontFamily: 'Rubik',
                title: 'Fitness',
                image: 'assets/images/fitness_girl.png',
                ontTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GymDetailMobileUi()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.w, top: 30.h),
              child: CommonCategoryMobile(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w500,
                fontFamily: 'Rubik',
                title: 'Spa & Beauty',
                image: 'assets/images/spa.png',
              ),
            ),
          ],
        ),

      ],
    );
  }
}
