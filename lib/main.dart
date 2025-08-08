import 'package:actiday/ui/home/mobile/home_mobile_ui.dart';
import 'package:actiday/ui/home/web/home_web_ui.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales:const <Locale>[Locale('en'), Locale('ar'),Locale('fr')],
        path: 'assets/lang',
        startLocale: Locale('en'),
        fallbackLocale: Locale('en'),
        // useOnlyLangCode: true,
        saveLocale: false,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth >= 600) {
          //for web
          return ScreenUtilInit(
            designSize: const Size(1366, 1685),
            minTextAdapt: true,
            splitScreenMode: true,
            builder:
                (context, child) => MaterialApp(
                  locale: context.locale,
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                  debugShowCheckedModeBanner: false,
                  home: child,
                ),
            child: WebHomeUi(),
            // child:  SpaAndBeautyUi(),
          );
        } else {
          return ScreenUtilInit(
            //for mobile
            designSize: const Size(375, 809),
            minTextAdapt: true,
            splitScreenMode: true,
            builder:
                (context, child) => MaterialApp(
                  locale: context.locale,
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                  debugShowCheckedModeBanner: false,
                  home: child,
                ),
            // child: GymDetailMobileUi(),
            child: MobileHomeUi(),
          );
        }
      },
    );
  }
}
