import 'package:actiday/ui/catagories/web/categories.dart';
import 'package:actiday/ui/home/web/ui/home_screen_app_appbar.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_category.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 100.w, top: 40.h),
          child: SingleChildScrollView(
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
                      child: CommonCategory(color: Colors.blueAccent),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, top: 30.h),
                      child: CommonCategory(color: Colors.pinkAccent),
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.0.w, top: 34.h),
                      child: SizedBox(
                        height: 138 * 2.h,
                        width: (MediaQuery.sizeOf(context).width) - 200.w,
                        child: GridView.builder(
                          // physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 30.0,
                              ),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 138.h,
                              width: 368.w,
                              decoration: BoxDecoration(
                                color: AppColors.clrF8F8F8,
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 123.h,
                                    width: 368.w,
                                    child: Image.asset(
                                      alignment: Alignment.topCenter,
                                      'assets/images/back_massage.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 138.h,
                                    width: 368.w,
                                    child: Image.asset(
                                      alignment: Alignment.topCenter,
                                      'assets/images/back_massage.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
