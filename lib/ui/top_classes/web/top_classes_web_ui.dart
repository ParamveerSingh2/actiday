import 'package:actiday/framework/controller/top_classes/top_classes_controller.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopClassesWebUi extends ConsumerStatefulWidget {
  const TopClassesWebUi({super.key});

  @override
  ConsumerState<TopClassesWebUi> createState() => _TopClassesUiState();
}

class _TopClassesUiState extends ConsumerState<TopClassesWebUi> {
  @override
  Widget build(BuildContext context) {
    final topClassWatch = ref.watch(topClassController);
    return Column(
      children: [
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
        SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 34.h, bottom: 80.h),
                child: SizedBox(
                  // height: (MediaQuery.sizeOf(context).height) - 60.h,
                  width: (MediaQuery
                      .sizeOf(context)
                      .width) - 200.w,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30.0,
                      childAspectRatio: 1.7,
                    ),
                    itemCount: topClassWatch.topClassesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 140.h,
                        width: 370.w,
                        decoration: BoxDecoration(
                          color: AppColors.clrF8F8F8,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 138.sp,
                                    width: 368.sp,
                                    child: Image.asset(
                                      alignment: Alignment.topCenter,
                                      topClassWatch.topClassesList[index].image,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    right: 7.8.sp,
                                    top: 14.5.sp,
                                    child: GestureDetector(
                                      onTap: () {
                                        topClassWatch.toggleLike(index);
                                      },
                                      child: ClipRRect(
                                        clipBehavior: Clip.antiAlias,
                                        borderRadius: BorderRadius.circular(
                                          50.r,
                                        ),
                                        child: Container(
                                          color: AppColors.clrWhite,
                                          height: 20.sp,
                                          width: 20.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // like unlike button
                                      right: 10.sp,
                                      top: 17.sp,
                                      child: GestureDetector(
                                        onTap: () {
                                          topClassWatch.toggleLike(index);
                                        },
                                        child: topClassWatch
                                            .topClassesList[index].isLiked
                                            ? Icon(
                                          CupertinoIcons.heart_fill,
                                          size: 16.sp,
                                          color: Colors.pinkAccent,
                                        ) : Icon(
                                          CupertinoIcons.heart_fill,
                                          size: 16.sp,
                                          color: AppColors.clrB5B5B5,
                                        ),
                                      )
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
                                        topClassWatch
                                            .topClassesList[index]
                                            .title,
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
                                      SizedBox(width: 2.w),
                                      SvgPicture.asset(
                                        SvgConstants.svgStarIcon,
                                        height: 16.sp,
                                        width: 16.sp,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CommonText(
                                        title:
                                        topClassWatch
                                            .topClassesList[index]
                                            .subTitle,
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
                                        topClassWatch
                                            .topClassesList[index]
                                            .location,
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
