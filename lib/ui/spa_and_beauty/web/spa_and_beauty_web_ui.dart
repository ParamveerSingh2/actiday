import 'package:actiday/ui/home/web/home_screen_app_appbar.dart';
import 'package:actiday/ui/terms_and_conditions/web/terms_and_conditions_ui.dart';
import 'package:actiday/ui/top_classes/web/top_classes_web_ui.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpaAndBeautyWebUi extends ConsumerStatefulWidget {
  const SpaAndBeautyWebUi({super.key});

  @override
  ConsumerState<SpaAndBeautyWebUi> createState() => _SpaAndBeautyUiState();
}

class _SpaAndBeautyUiState extends ConsumerState<SpaAndBeautyWebUi> {
  @override
 void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
  @override
  void dispose(){
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.clrF0F5F9,
        toolbarHeight: 100.w,
        title: HomeScreenAppBar(),
      ),
      backgroundColor: AppColors.clrWhite,
      body: Padding(
        padding: EdgeInsets.only(
          left: 100.w,
          right: 95.w,
          top: 35.h,
          bottom: 30.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CommonText(
                    title: 'Spa & Beauty',
                    fontSize: 25.sp,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w500,
                    color: AppColors.clr131414,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Container(
                      child: Image.asset(
                        'assets/images/spa_image.png',
                        height: 552.sp,
                        width: 663.sp,

                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 30.w),
                  SizedBox(
                    height: 500.sp,
                    width: 471.w,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          title: 'Royal Peace Spa',
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          color: AppColors.clr131414,
                        ),
                        SizedBox(height: 10.h),

                        CommonText(
                          title:
                              'Relax and rejuvenate with the traditional Thai dry therapy Relax and rejuvenate with the',
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          fontSize: 16.sp,
                          color: AppColors.clr576464,
                        ),
                        SizedBox(height: 10.h),

                        CommonText(
                          title:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          fontSize: 16.sp,
                          color: AppColors.clr576464,
                        ),
                        SizedBox(height: 10.h),

                        CommonText(
                          title:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          fontSize: 16.sp,
                          color: AppColors.clr576464,
                        ),
                        SizedBox(height: 20.h),
                        CommonText(
                          title: 'Popular Services',
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          color: AppColors.clr131414,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Expanded(child: Column(
                                children: [
                                  Image.asset('assets/images/massage.png',height: 55.sp,width: 90.sp,),
                                  CommonText(title: 'Massage',fontSize: 12.sp,fontFamily: 'Rubik',fontWeight: FontWeight.w400,color: AppColors.clr131414,)

                                ],
                              )),
                              Expanded(child: Column(
                                children: [
                                  Image.asset('assets/images/moroccan_bath.png',height: 55.sp,width: 90.sp,),
                                  CommonText(title: 'Moroccan Bath',fontSize: 12.sp,fontFamily: 'Rubik',fontWeight: FontWeight.w400,color: AppColors.clr131414,)

                                ],
                              )),
                              Expanded(child: Column(
                                children: [
                                  Image.asset('assets/images/manicure.png',height: 55.sp,width: 90.sp,),
                                  CommonText(title: 'Manicure',fontSize: 12.sp,fontFamily: 'Rubik',fontWeight: FontWeight.w400,color: AppColors.clr131414,)

                                ],
                              )),
                              Expanded(child: Column(
                                children: [
                                  Image.asset('assets/images/hair_dryer.png',height: 55.sp,width: 90.sp,),
                                  CommonText(title: 'Hair Blow Dry',fontSize: 12.sp,fontFamily: 'Rubik',fontWeight: FontWeight.w400,color: AppColors.clr131414,)

                                ],
                              )),

                            ],

                          ),

                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CommonText(
                    padding: EdgeInsets.only(top: 30.h,),
                    title: 'Top Classes',
                    fontFamily: 'Poppins',
                    fontSize: 24.sp,
                    color: AppColors.clr131414,
                    fontWeight: FontWeight.w600,
                  ),

                  Spacer(),
                  CommonText(
                    title: 'See All',
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: AppColors.clrB5B5B5,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              TopClassesWebUi(),
              TermsAndConditionsUi(),

            ],
          ),
        ),
      ),
    );
  }
}
