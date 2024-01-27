import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:food_delivery/src/utils/resources/size_extension.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    this.color = Colors.blueAccent,
    required this.title,
    required this.logo,
    this.radius = 16,
    this.textColor = AppColors.textColor,
    this.borderColor = Colors.transparent,
    required this.onTap,
    this.padding,
    this.width,
  });

  final Color color;

  final Color textColor;
  final String title;
  final double radius;
  final Color borderColor;
  final VoidCallback onTap;
  final EdgeInsets? padding;
  final SvgPicture logo;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: ZoomTapAnimation(
        onTap: onTap,
        child: SizedBox(
          width: width,
          child: Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(radius),
                border: Border.all(color: borderColor)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    logo,
                    14.pw,
                    Text(
                      overflow: TextOverflow.ellipsis,
                      title,
                      style: const TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
