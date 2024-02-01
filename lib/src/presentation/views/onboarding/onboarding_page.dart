import 'package:flutter/material.dart';
import 'package:food_delivery/src/presentation/views/onboarding/widgets/page_one.dart';
import 'package:food_delivery/src/presentation/views/onboarding/widgets/page_two.dart';
import 'package:food_delivery/src/presentation/widgets/global_button.dart';

import '../../../config/router/app_routes.dart';
import '../../../utils/resources/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: PageView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                pageIndex = index;
                pageController.animateToPage(index,
                    duration: const Duration(seconds: 1),
                    curve: Curves.linearToEaseOut);
                setState(() {});
              },
              controller: pageController,
              children: const [
                PageOne(),
                PageTwo(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.25),
            child: GlobalButton(
              title: "Next",
              onTap: () {
                if (pageIndex == 1) {
                  Navigator.pushReplacementNamed(context, RouteNames.loginPage);
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  pageIndex++;
                }
              },
              textColor: AppColors.white,
              color: AppColors.gradient,
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
