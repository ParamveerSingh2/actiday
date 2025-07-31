import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonText extends StatelessWidget {
  final String title;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  const CommonText({super.key, required this.title, this.color, this.fontFamily, this.fontSize, this.padding, this.fontWeight});


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize:fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,

      ),
    );
  }
}
