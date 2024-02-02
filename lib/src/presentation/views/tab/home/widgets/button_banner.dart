import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:food_delivery/src/utils/resources/gradient_text.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ButtonBanner extends StatelessWidget {
  const ButtonBanner({
    super.key,
    this.color = AppColors.white,
    required this.title,
    this.radius = 16,
    this.textColor = AppColors.gradient,
    this.borderColor = Colors.transparent,
    required this.onTap,
    this.padding,
  });

  final Color color;

  final Gradient textColor;
  final String title;
  final double radius;
  final Color borderColor;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: ZoomTapAnimation(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: borderColor)),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              child: GradientText(
                title,
                gradient: AppColors.gradient,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
