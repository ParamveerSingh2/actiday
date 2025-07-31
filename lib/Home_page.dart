import 'package:actiday/desktop.dart';
import 'package:actiday/mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint){
      if(constraint.maxWidth >= 600){
        return ScreenUtilInit(
          designSize: const Size(1366, 1685),
          minTextAdapt: true,
          splitScreenMode: true,
          builder:
              (context, child) =>
              MaterialApp(debugShowCheckedModeBanner: false, home: child),
          child:  Desktop(),
      );
      }
      else {
        return Mobile();
      }
    });
  }
}
