import 'package:actiday/framework/controller/lang_controller.dart';
import 'package:actiday/framework/utils/extension/string_extension.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/theme/app_strings.g.dart';
import 'package:actiday/ui/utils/theme/svg_constants.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenAppBarMobile extends ConsumerStatefulWidget {
  const HomeScreenAppBarMobile({super.key});

  @override
  ConsumerState<HomeScreenAppBarMobile> createState() => _HomeScreenAppBarMobileState();
}

class _HomeScreenAppBarMobileState extends ConsumerState<HomeScreenAppBarMobile> {
  String? dropDownValue = 'English';
  var items = ['English', 'Arabic','French'];

  @override
  Widget build(BuildContext context) {
    final languageWatch = ref.watch(languageController);
    // app bar for mobile home screen
    return Column(
      children: [
        Row(
          children: [
            DropdownButton(
              value: dropDownValue,
              icon: const Icon(Icons.keyboard_arrow_down),

              items:
                  items.map((String items) {
                    return DropdownMenuItem(value: items, child: Text(items));
                  }).toList(),
              onChanged: (newValue) {
                dropDownValue = newValue;
                languageWatch.languageToggle(dropDownValue, context);
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
