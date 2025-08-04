import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsUi extends StatelessWidget {
  const TermsAndConditionsUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        height: 167.h,
        width: MediaQuery.sizeOf(context).width,
        color: AppColors.clrBlack,
        child: Row(
          children: [
            CommonText(
              title: 'Copyright © 2020-22 Dreamplug technologies Pvt Ltd.',
              color: Colors.grey,
              fontSize: 12.sp,
              fontFamily: 'Poppins',
              padding: EdgeInsets.only(left: 100.w),
            ),
            Spacer(),
            CommonText(
              title:
                  'privacy policy  |  terms and conditions | returns and refund ',
              color: Colors.grey[350],
              fontSize: 13.sp,
              fontFamily: 'Poppins',
              padding: EdgeInsets.only(right: 100.w),
            ),
          ],
        ),
      ),
    );
  }
}
