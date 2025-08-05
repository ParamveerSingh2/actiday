import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AdvertisementBannerWebUi extends StatelessWidget {
  const AdvertisementBannerWebUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: ((MediaQuery.sizeOf(context).width) - 200.w),
          decoration: BoxDecoration(
            color: AppColors.clrF8F8F8,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonText(
                      padding: EdgeInsets.only(
                        left: 30.w,
                        top: 20.h,
                        right: 10.w,
                      ),

                      title: 'Be Fit',
                      fontFamily: 'Poppins',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    CommonText(
                      padding: EdgeInsets.only(
                        left: 30.w,
                        top: 30.h,
                        right: 10.w,
                      ),

                      title:
                      'Experts define physical fitness as "one\'s ability\nto execute daily activities with optimal"',
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      color: AppColors.clr576464,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 60.h,
                      width: 130.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.clrBlack,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(18.r),
                              bottomLeft: Radius.circular(18.r),
                            ),
                          ),

                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              SvgConstants.svgRightArrowIcon,
                              height: 22.sp,
                              width: 22.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 30.w,
                  top: 10.h,
                ),
                child: SizedBox(
                  height: 260.h,
                  child: Image.asset(
                    'assets/images/girl_lift.png',
                    fit: BoxFit.contain,
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
