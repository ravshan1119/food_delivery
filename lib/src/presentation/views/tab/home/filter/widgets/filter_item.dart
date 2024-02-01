import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:food_delivery/src/utils/resources/size_extension.dart';

class FilterItemOne extends StatelessWidget {
  const FilterItemOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.textColor,
          ),
        ),
        24.ph,
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                color: AppColors.c_FBF4EB,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 20.w),
                child: Text(
                  "Restaurant",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.c_da6317,
                  ),
                ),
              ),
            ),
            12.pw,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                color: AppColors.c_FBF4EB,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 20.w),
                child: Text(
                  "Menu",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.c_da6317,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
