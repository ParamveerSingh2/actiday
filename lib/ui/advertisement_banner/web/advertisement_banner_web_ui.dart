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
    //advertisement banner for web home screen
    return Row(
      children: [
        Container(
          height: 310.h,
          width: ((MediaQuery
              .sizeOf(context)
              .width) - 200.w),
          decoration: BoxDecoration(
            color: AppColors.clrF8F8F8,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {

              return SizedBox(
                width:( MediaQuery.of(context).size.width)-200.w,
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
                              right: 4.w,
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
                              right: 4.w,
                            ),

                            title:
                            'Experts define physical fitness as "one\'s ability\nto execute daily activities with optimal"',
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            color: AppColors.clr576464,
                            fontWeight: FontWeight.w400,
                          ),
                          Spacer(),
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
                              child: SvgPicture.asset(
                                SvgConstants.svgRightArrowIcon,
                                height: 22.sp,
                                width: 22.sp,
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

                        child: Image.asset(
                          'assets/images/girl_lift.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
              );

            },

          ),
        ),
      ],
    );
  }
}
