import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopClassesUi extends StatelessWidget {
  const TopClassesUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 34.h),
                child: SizedBox(
                  // height: (MediaQuery.sizeOf(context).height) - 60.h,
                  width: (MediaQuery.sizeOf(context).width) - 200.w,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30.0,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 138.h,
                        width: 368.w,
                        decoration: BoxDecoration(
                          color: AppColors.clrF8F8F8,
                          borderRadius: BorderRadius.circular(
                            20.0.r,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 138.sp,
                              width: 368.sp,
                              child: Image.asset(
                                alignment: Alignment.topCenter,
                                'assets/images/back_massage.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 20.w,
                                top: 20.h,
                                right: 20.w,
                                bottom: 7.h,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CommonText(
                                        title: 'Weight Life',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp,
                                        color: AppColors.clr131414,
                                        fontFamily: 'Poppins',
                                      ),
                                      Spacer(),
                                      CommonText(
                                        title: '4.5',
                                        fontFamily: 'Rubik',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SvgPicture.asset(
                                        SvgConstants.svgStarIcon,
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CommonText(
                                        title: 'Lady Lift',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: AppColors.clr131414,
                                        fontFamily: 'Poppins',
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CommonText(
                                        title:
                                        'arabian gulf st ( 2km )',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: AppColors.clrB5B5B5,
                                        fontFamily: 'Rubik',
                                      ),
                                    ],
                                  ),
                                ],
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
        ),

      ],
    );
  }
}
