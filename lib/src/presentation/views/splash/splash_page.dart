import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/config/router/app_routes.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:food_delivery/src/utils/resources/app_images.dart';

import '../../../utils/resources/gradient_text.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  goToOnBoarding(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    if (context.mounted) {
      Navigator.pushReplacementNamed(context, RouteNames.onBoardingPage);
    }
  }

  @override
  void initState() {
    goToOnBoarding(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.logo),
                GradientText('FoodNinja',
                    style: TextStyle(
                      fontFamily: "Viga",
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    gradient: AppColors.gradient),
                Text(
                  "Deliever Favorite Food",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              AppImages.pattern,
              fit: BoxFit.cover,
              opacity: const AlwaysStoppedAnimation(.5),
            ),
          )
        ],
      ),
    );
  }
}
