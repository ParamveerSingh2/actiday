import 'package:actiday/ui/advertisement_banner/web/advertisement_banner_web_ui.dart';
import 'package:actiday/ui/catagories/web/categories_web.dart';
import 'package:actiday/ui/home/web/home_screen_app_appbar.dart';
import 'package:actiday/ui/terms_and_conditions/web/terms_and_conditions_ui.dart';
import 'package:actiday/ui/top_classes/web/top_classes_ui.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebHomeUi extends StatelessWidget {
  const WebHomeUi({super.key});

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
                    AdvertisementBannerWebUi(),

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
                    CategoriesWeb(),
                    TopClassesUi(),
                    SizedBox(height: 80.h),
                  ],
                ),
              ),
            ),
            TermsAndConditionsUi(),
          ],
        ),
      ),
    );
  }
}
