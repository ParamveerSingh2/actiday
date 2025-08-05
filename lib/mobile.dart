import 'package:actiday/ui/advertisement_banner/mobile/advertisement_banner_mobile_ui.dart';
import 'package:actiday/ui/catagories/mobile/categories_mobile.dart';
import 'package:actiday/ui/top_classes/mobile/top_classes_mobile.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ui/home/mobile/home_screen_app_bar_mobile.dart';
import 'ui/utils/theme/svg_constants.dart';

class MobileUi extends StatelessWidget {
  const MobileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clrWhite,
      appBar: AppBar(
        backgroundColor: AppColors.clrWhite,
        toolbarHeight: 100.h,
        title: HomeScreenAppBarMobile(),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    SvgConstants.svgHomeIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(height: 4.h),
                  CommonText(
                    title: 'Home',
                    fontSize: 12.sp,
                    color: AppColors.clr131414,
                    fontFamily: 'Rubik',
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    SvgConstants.svgCalenderIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(height: 4.h),
                  CommonText(
                    title: 'Bookings',
                    fontSize: 12.sp,
                    color: AppColors.clrB5B5B5,
                    fontFamily: 'Rubik',
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    SvgConstants.svgNavigationIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(height: 4.h),
                  CommonText(
                    title: 'Explore',
                    fontSize: 12.sp,
                    color: AppColors.clrB5B5B5,
                    fontFamily: 'Rubik',
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    SvgConstants.svgHeartIcon,
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(height: 4.h),
                  CommonText(
                    title: 'Favorite',
                    fontSize: 12.sp,
                    color: AppColors.clrB5B5B5,
                    fontFamily: 'Rubik',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 45.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.clrCCCCCC,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0),
                        ),
                        prefixIcon: Icon(CupertinoIcons.search, size: 14.sp),
                        label: CommonText(
                          title: 'yoga, pilates, massage',
                          fontSize: 11.sp,
                          fontFamily: 'Rubik',
                          color: AppColors.clr131414,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Title';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              AdvertisementBannerMobileUi(),
              CategoriesMobile(),
              TopClassesMobileUi(),
            ],
          ),
        ),
      ),
    );
  }
}
