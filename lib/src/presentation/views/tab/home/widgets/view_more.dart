import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:food_delivery/src/utils/resources/app_colors.dart";
class ViewMoreItem extends StatelessWidget {
  const ViewMoreItem({super.key, required this.labelName, required this.onTap});

  final String labelName;
  final VoidCallback onTap; 

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    labelName,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "View More",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.c_FF7C32,
                      ),
                    ),
                  ),
              
                ],
              ),
            );
  }
}