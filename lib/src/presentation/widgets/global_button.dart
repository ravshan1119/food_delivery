import 'package:flutter/material.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    this.color = AppColors.gradient,
    required this.title,
    this.radius = 16,
    this.textColor = AppColors.textColor,
    this.borderColor = Colors.transparent,
    required this.onTap,
    this.padding,
  });

  final Gradient color;

  final Color textColor;
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
              gradient: color,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: borderColor)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                overflow: TextOverflow.ellipsis,
                title,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
