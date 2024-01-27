import 'package:flutter/material.dart';
import 'package:food_delivery/src/presentation/views/auth/log_in/login_page.dart';
import 'package:food_delivery/src/presentation/views/auth/sign_up/signup_page.dart';
import 'package:food_delivery/src/presentation/views/onboarding/onboarding_page.dart';
import 'package:food_delivery/src/presentation/views/splash/splash_page.dart';

class RouteNames {
  static const String splashPage = "/";
  static const String onBoardingPage = "/onboarding";
  static const String loginPage = "/login";
  static const String signupPage = "/signup";
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
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(child: Text("Route not found!")),
      ),
    );
  }
}
