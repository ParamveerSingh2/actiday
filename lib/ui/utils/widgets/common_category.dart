import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonCategory extends StatelessWidget {
  final Color color;
  const
  CommonCategory({super.key, required this.color});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 212.h,
      width: 568.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0.r),
      ),
    );
  }
}
