import 'package:actiday/framework/utils/extension/string_extension.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/app_strings.g.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenAppBarMobile extends StatefulWidget {
  const HomeScreenAppBarMobile({super.key});

  @override
  State<HomeScreenAppBarMobile> createState() => _HomeScreenAppBarMobileState();
}

class _HomeScreenAppBarMobileState extends State<HomeScreenAppBarMobile> {
  String? dropdownvalue = 'English';

  Locale dropDownValue = Locale('en');
  List<Locale> language = [Locale('en'), Locale('ar')];


  var items = [
    'Arabic',
    'English',
  ];
  @override
  Widget build(BuildContext context) {

    // app bar for mobile home screen
    return Column(
      children: [
        Row(
          children: [
            // DropdownButton<Locale>(
            //   value: dropDownValue,
            //   icon: SvgPicture.asset(
            //     SvgConstants.svgCategoryIcon,
            //     height: 24.h,
            //     width: 24.w,
            //   ),
              // onChanged: (Locale? language) {
              //   if (language != null) {
              //     language = language;
              //   }
              // },
              // onChanged: (Locale? language) {
              //   if(language != null){
              //     dropDownValue = language;
              //   }
              //   setState(() {
              //     dropDownValue = language!;
              //   });
              // },
              // items:
              //     language.map((Locale locale) {
              //       return DropdownMenuItem<Locale>(
              //         value: dropDownValue,
              //         child: Text(
              //           locale.languageCode == 'en' ? 'English' : 'Arabic',
              //         ),
              //       );
              //     }).toList(),
              // items:
              //     language.map((Locale locale) {
              //       return DropdownMenuItem<Locale>(
              //         value: dropDownValue,
              //         child: Text(
              //           locale.languageCode == 'en' ? 'English' : 'Arabic',
              //         ),
              //       );
              //     }).toList(),
            // ),
            DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),

              items:
              items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              // onChanged: (Locale? language) {
              //   if(language != null){
              //     dropDownValue = language;
              //   }
              //   setState(() {
              //     dropDownValue = language!;
              //   });
              // },
              onChanged: (newValue) {
                  dropdownvalue = newValue;
                  setState(() {

                  });
              },
            ),
            Spacer(),
            SvgPicture.asset(
              SvgConstants.svgLocationIcon,
              height: 12.h,
              width: 12.w,
              color: AppColors.clr131414,
            ),
            SizedBox(width: 3),
            CommonText(
              title: LocaleKeys.keyAbuDhabiUAE.localized,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rubik',
              fontSize: 12.sp,
              color: AppColors.clr010101,
            ),
            Spacer(),
            SvgPicture.asset(
              SvgConstants.svgNotificationIcon,
              height: 24.h,
              width: 24.w,
            ),
          ],
        ),
      ],
    );
  }
}
