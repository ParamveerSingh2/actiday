import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String title;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final bool? softWrap;

  final EdgeInsetsGeometry? padding;
  const CommonText({super.key, required this.title, this.color, this.fontFamily, this.fontSize, this.padding, this.fontWeight, this.textOverflow, this.maxLines, this.softWrap});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        title,

        style: TextStyle(
          overflow:textOverflow,
          fontSize:fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          color: color,
        ),
      ),
    );
  }
}
