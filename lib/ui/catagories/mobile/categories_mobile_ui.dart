import 'package:actiday/framework/controller/category/categoriy_controller.dart';
import 'package:actiday/ui/gym_details/mobile/gym_detail_mobile_ui.dart';
import 'package:actiday/ui/utils/theme/app_colors.dart';
import 'package:actiday/ui/utils/widgets/common_category_mobile.dart';
import 'package:actiday/ui/utils/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesMobileUi extends ConsumerStatefulWidget {
  const CategoriesMobileUi({super.key});

  @override
  ConsumerState<CategoriesMobileUi> createState() => _CategoriesMobileUiState();
}

class _CategoriesMobileUiState extends ConsumerState<CategoriesMobileUi> {
  @override
  Widget build(BuildContext context) {
    final categoryWatch = ref.watch(categoryController);
    // Categories section for mobile
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Row(
            children: [
              CommonText(
                title: 'Categories',
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                color: AppColors.clr131414,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 8.0.w),
          child: SizedBox(
            height: 210.h,
            width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryWatch.categoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15.w, top: 30.h),
                            child: CommonCategoryMobile(
                              color: categoryWatch.categoryList[index].color,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                              title: categoryWatch.categoryList[index].title,
                              image: categoryWatch.categoryList[index].image,
                              ontTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GymDetailMobileUi(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
