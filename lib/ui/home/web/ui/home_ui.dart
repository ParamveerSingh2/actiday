import 'package:actiday/ui/catagories/web/categories.dart';
import 'package:actiday/ui/home/web/ui/home_screen_app_appbar.dart';
import 'package:actiday/ui/top_classes/web/top_classes_ui.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_category.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clrWhite,
      appBar: AppBar(
        backgroundColor: AppColors.clrF0F5F9,
        toolbarHeight: 100.w,
        title: HomeScreenAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 100.w, top: 40.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: (MediaQuery.sizeOf(context).width) - 200.w,
                          height: 242.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 241.h,
                                width: (MediaQuery.sizeOf(context).width) - 1.w,
                                decoration: BoxDecoration(
                                  color: AppColors.clrF8F8F8,
                                  borderRadius: BorderRadius.circular(20.0.r),
                                ),
                                child: Image.asset(
                                  'assets/images/be_fit.png',
                                  fit: BoxFit.fitHeight,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 63.h),
                          child: CommonText(
                            title: 'Royal Peace Spa',
                            fontFamily: 'Rubik',
                            fontSize: 24.sp,
                            color: AppColors.clr131414,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Row(
                        children: [
                          CommonText(
                            title:
                                'Relax and rejuvenate with the traditional Thai dry therapy Relax and rejuvenate with the',
                            fontFamily: 'Rubik',
                            fontSize: 16.sp,
                            color: AppColors.clr576464,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    Categories(),
                    TopClassesUi(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
