import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonCategory extends StatelessWidget {
  final Color color;
  final String title;
  final FontWeight fontWeight;
  final String fontFamily;

  const CommonCategory({
    super.key,
    required this.color,
    required this.title,
    required this.fontWeight,
    required this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:( MediaQuery.sizeOf(context).width)/2.38,
      height:( MediaQuery.sizeOf(context).height)/5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.w, top: 35.h),
            child: CommonText(
              textOverflow: TextOverflow.fade,
              title: title,
              fontSize: 24.sp,
              fontWeight: fontWeight,
              fontFamily: fontFamily,
              color: AppColors.clrWhite,

            ),
          ),
          Spacer(),
          SizedBox(
            height: 400.h,
            width: 200.w,
            child: Column(
              children: [
                Expanded(child: Image.asset('assets/images/spa.png',fit: BoxFit.fitHeight,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
