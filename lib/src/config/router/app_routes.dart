import 'package:flutter/material.dart';
import 'package:food_delivery/src/presentation/views/auth/log_in/login_page.dart';
import 'package:food_delivery/src/presentation/views/auth/sign_up/signup_page.dart';
import 'package:food_delivery/src/presentation/views/onboarding/onboarding_page.dart';
import 'package:food_delivery/src/presentation/views/splash/splash_page.dart';
import 'package:food_delivery/src/presentation/views/tab/home/filter/filter_page.dart';
import 'package:food_delivery/src/presentation/views/tab/home/home_page.dart';

import '../../presentation/views/tab/tab.dart';

class RouteNames {
  static const String splashPage = "/";
  static const String onBoardingPage = "/onboarding";
  static const String loginPage = "/login";
  static const String signupPage = "/signup";
  static const String homePage = "/home";
  static const String tabPage = "/tab";
  static const String filterPage = "/filter";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashPage:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );
      case RouteNames.onBoardingPage:
        return MaterialPageRoute(
          builder: (context) => const OnboardingPage(),
        );
      case RouteNames.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case RouteNames.signupPage:
        return MaterialPageRoute(
          builder: (context) => const SignupPage(),
        );
      case RouteNames.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case RouteNames.tabPage:
        return MaterialPageRoute(
          builder: (context) => const TabPage(),
        );
      case RouteNames.filterPage:
        return MaterialPageRoute(
          builder: (context) => const FilterPage(),
        );
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(child: Text("Route not found!")),
      ),
    );
  }
}
