import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TrailingIcon extends StatelessWidget {
  final String icon;
  const TrailingIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 38.sp,bottom: 38.sp, left: 20.sp, right: 20.sp,),
      child: SvgPicture.asset(
        icon,
        height: 24.sp,
        width: 24.sp,
      ),
    );
  }
}
