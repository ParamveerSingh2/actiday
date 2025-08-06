import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonCategoryMobile extends StatelessWidget {
  final Color color;
  final String title;
  final FontWeight fontWeight;
  final String fontFamily;
  final String image;
  final VoidCallback? ontTap;

  const CommonCategoryMobile({
    super.key,
    required this.color,
    required this.title,
    required this.fontWeight,
    required this.fontFamily,
    required this.image,
    this.ontTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontTap,
      child: Container(
        width: (MediaQuery.sizeOf(context).width) / 2.35,
        height: (MediaQuery.sizeOf(context).height) / 5,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0.r),
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 15.h),
                  child: CommonText(
                    textOverflow: TextOverflow.fade,
                    title: title,
                    fontSize: 14.sp,
                    fontWeight: fontWeight,
                    fontFamily: fontFamily,
                    color: AppColors.clrWhite,
                  ),
                ),

                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: SizedBox(
                      height: (MediaQuery.of(context).size.height) - 90.h,
                      width: 150.w,
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(image, fit: BoxFit.fitHeight),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
