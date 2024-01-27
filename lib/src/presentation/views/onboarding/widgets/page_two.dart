import 'package:flutter/material.dart';

import '../../../../utils/resources/app_colors.dart';
import '../../../../utils/resources/app_images.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppImages.onboardingTwo,
              fit: BoxFit.cover,
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 82),
          child: Text(
            "Food Ninja is Where Your Comfort Food Lives",
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
            "Enjoy a fast and smooth food delivery at your doorstep",
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
