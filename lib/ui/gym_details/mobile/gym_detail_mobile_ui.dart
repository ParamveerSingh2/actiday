import 'package:actiday/framework/controller/gym_details/gym_details_controller.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GymDetailMobileUi extends ConsumerStatefulWidget {
  const GymDetailMobileUi({super.key});

  @override
  ConsumerState<GymDetailMobileUi> createState() => _GymDetailMobileUiState();
}

class _GymDetailMobileUiState extends ConsumerState<GymDetailMobileUi> {


  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
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
  // gym details mobile
  @override
  Widget build(BuildContext context) {
    final ourServicesWatch = ref.watch(ourServicesController);
    return Scaffold(
      backgroundColor: AppColors.clrFAFAFA,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.clrWhite,
        title: Padding(
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.arrow_back_ios_rounded, size: 24.sp),
              ),
              CommonText(
                title: 'Gym Details',
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                color: AppColors.clrBlack,
                fontWeight: FontWeight.w500,
              ),
              Container(
                height: 26.h,
                width: 26.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.clrBlack, width: 1.2),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 2.5.h),
                  child: Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.pinkAccent,
                    size: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/images/weight_lift.png',
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned(
                      right: 30.w,
                      bottom: 20.h,
                      child: Stack(
                        children: [
                          Container(
                            height: 23.sp,
                            width: 64.sp,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.clrFEC34D,
                                  AppColors.clrF88C83,
                                  AppColors.clrF048C6,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),

                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                          Positioned(
                            top: 3.2.sp,
                            right: 11.7.sp,

                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.star,
                                  size: 15,
                                  color: AppColors.clrWhite,
                                ),
                                SizedBox(width: 5.w),
                                CommonText(
                                  title: '4.5',
                                  color: AppColors.clrWhite,
                                  fontSize: 13.sp,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: -41.h,
                      left: 20.w,
                      child: Container(
                        width: 90.w,
                        height: 90.h,

                        decoration: BoxDecoration(
                          color: AppColors.clrWhite,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.clrBlack.withOpacity(.2),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: SvgPicture.asset(
                          SvgConstants.svgLadyFitLogo,

                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -65.h,
                      right: 8.w,
                      child: SizedBox(
                        width: 90.w,
                        height: 90.h,
                        child: Container(
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.info, size: 28.sp),
                              SizedBox(width: 4.w),
                              CommonText(
                                title: 'Info',
                                color: AppColors.clrB5B5B5,
                                fontSize: 14.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CommonText(
            padding: EdgeInsets.only(left: 20.w, top: 55.h),
            title: 'Lady Fit',
            color: AppColors.clrBlack,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            fontFamily: 'Poppins',
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 13.h),
            child: Row(
              children: [
                SvgPicture.asset(SvgConstants.svgLocationIcon),
                CommonText(
                  padding: EdgeInsets.only(left: 5.w),
                  title: 'Arabian Gulf ( 2 km )',
                  color: AppColors.clrB5B5B5,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  fontFamily: 'Rubik',
                ),
                Spacer(),
                CommonText(
                  padding: EdgeInsets.only(right: 20.w),
                  title: '1/3 Left',
                  color: AppColors.clr131414,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  fontFamily: 'Rubik',
                ),
              ],
            ),
          ),
          CommonText(
            padding: EdgeInsets.only(left: 20.w, top: 30.h),
            title: 'Our Services',
            color: AppColors.clr131414,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            fontFamily: 'Poppins',
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.h,
                bottom: 40.h,
                left: 20.w,
                right: 20.w,
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30.0,
                  childAspectRatio: 1.3,
                ),
                itemCount: ourServicesWatch.ourServicesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 70.h,
                    width: 185.w,
                    decoration: BoxDecoration(
                      color: AppColors.clrWhite,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height,
                                width: MediaQuery.sizeOf(context).width,
                                child: Image.asset(
                                  alignment: Alignment.topCenter,
                                  ourServicesWatch.ourServicesList[index].image,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.w,
                            top: 20.h,
                            right: 20.w,
                            bottom: 20.h,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CommonText(
                                    title:
                                        ourServicesWatch
                                            .ourServicesList[index]
                                            .title,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: AppColors.clr131414,
                                    fontFamily: 'Rubik',
                                  ),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.clock,
                                    size: 12.sp,
                                    color: AppColors.clr131414,
                                  ),
                                  SizedBox(width: 4.w),
                                  CommonText(
                                    title:
                                        ourServicesWatch
                                            .ourServicesList[index]
                                            .time,
                                    fontFamily: 'Rubik',
                                    fontSize: 12.sp,
                                    color: AppColors.clrBlack,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CommonText(
                                      padding: EdgeInsets.only(top: 2.h),
                                      title:
                                          ourServicesWatch
                                              .ourServicesList[index]
                                              .description,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp,
                                      maxLines: 2,
                                      color: AppColors.clr131414,
                                      fontFamily: 'Rubik',
                                    ),
                                  ),
                                ],
                              ),

                              Divider(),
                              Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Row(
                                  children: [
                                    CommonText(
                                      title:
                                          '${ourServicesWatch.ourServicesList[index].credit} Credit',
                                      color: AppColors.clr131414,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      fontFamily: 'Poppins',
                                    ),
                                    Spacer(),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 23.sp,
                                          width: 80.sp,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                AppColors.clrFEC34D,
                                                AppColors.clrF88C83,
                                                AppColors.clrF048C6,
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),

                                            borderRadius: BorderRadius.circular(
                                              15.r,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 3.2.sp,
                                          right: 11.5.sp,

                                          child: CommonText(
                                            title: 'Book Now',
                                            color: AppColors.clrWhite,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
    );
  }
}
