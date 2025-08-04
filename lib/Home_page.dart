import 'package:actiday/ui/home/web/home_screen_app_appbar.dart';
import 'package:actiday/mobile.dart';
import 'package:actiday/ui/home/web/home_ui.dart';
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
          child:  WebHomeUi(),
      );
      }
      else {
        return Mobile();
      }
    });
  }
}
