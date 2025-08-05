import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AdvertisementBannerMobileUi extends StatelessWidget {
  const AdvertisementBannerMobileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Row(
            // advertisement banner
            children: [
              Container(
                width: (MediaQuery.of(context).size.width) - 40.w,
                height: 149.h,
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
                              left: 7.w,
                              top: 5.h,
                              right: 7.w,
                            ),

                            title: 'Be Fit',
                            fontFamily: 'Poppins',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          CommonText(
                            padding: EdgeInsets.only(
                              left: 7.w,
                              top: 2.h,
                              right: 2.w,
                            ),

                            title:
                                'Relax and rejuvenate\nwith the traditional Thai',
                            fontFamily: 'Rubik',
                            fontSize: 9.sp,
                            color: AppColors.clr576464,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 40.h),
                          SizedBox(
                            height: 30.h,
                            width: 60.w,
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
                                    height: 12.sp,
                                    width: 15.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        'assets/images/girl_lift.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CommonText(
          padding: EdgeInsets.only(top: 20.h),
          title: 'Active Lifestyle',
          fontFamily: 'Rubik',
          fontSize: 16.sp,
          color: AppColors.clr131414,
        ),
        CommonText(
          padding: EdgeInsets.only(top: 7.h),
          title: 'Get active every day Try new things\nfind new clases',
          fontFamily: 'Rubik',
          fontSize: 12.sp,
          color: AppColors.clr131414,
        ),
      ],
    );
  }
}
