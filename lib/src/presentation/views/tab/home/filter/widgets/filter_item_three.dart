import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:food_delivery/src/utils/resources/size_extension.dart';

class FilterItemThree extends StatelessWidget {
  const FilterItemThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Food",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.textColor,
          ),
        ),
        24.ph,
        Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: AppColors.c_FBF4EB,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                    child: Text(
                      "Cake",
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
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                    child: Text(
                      "Soup",
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
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                    child: Text(
                      "Main Course",
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
            ),
            12.ph,
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: AppColors.c_FBF4EB,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                    child: Text(
                      "Appetizer",
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
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                    child: Text(
                      "Dessert",
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
            ),
          ],
        )
      ],
    );
  }
}
