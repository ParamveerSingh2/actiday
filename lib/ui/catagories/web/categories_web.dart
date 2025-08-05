import 'package:actiday/ui/spa_and_beauty/web/spa_and_beauty_ui.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_category.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesWeb extends StatelessWidget {
  const CategoriesWeb({super.key});

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
                image: 'assets/images/fitness_girl.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.w, top: 30.h),
              child: CommonCategory(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w500,
                fontFamily: 'Rubik',
                title: 'Spa & Beauty',
                image: 'assets/images/spa.png',
                ontTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SpaAndBeautyUi()));
                },

              ),
            ),
          ],
        ),

      ],
    );
  }
}
