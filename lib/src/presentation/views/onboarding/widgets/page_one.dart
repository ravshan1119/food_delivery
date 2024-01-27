import 'package:flutter/material.dart';

import '../../../../utils/resources/app_colors.dart';
import '../../../../utils/resources/app_images.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppImages.onboardingOne,
              fit: BoxFit.cover,
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 82),
          child: Text(
            "Find your  Comfort Food here",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 66),
          child: Text(
            "Here You Can find a chef or dish for every taste and color. Enjoy!",
            style: TextStyle(
              fontFamily: "BentonSans Book",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(),
      ],
    );
  }
}
