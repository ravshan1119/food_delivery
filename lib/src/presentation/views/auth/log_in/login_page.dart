import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/src/presentation/views/auth/log_in/widgets/social_button.dart';
import 'package:food_delivery/src/presentation/widgets/app_text_field.dart';
import 'package:food_delivery/src/utils/resources/app_icons.dart';
import 'package:food_delivery/src/utils/resources/size_extension.dart';

import '../../../../config/router/app_routes.dart';
import '../../../../utils/resources/app_colors.dart';
import '../../../../utils/resources/app_images.dart';
import '../../../../utils/resources/gradient_text.dart';
import '../../../widgets/global_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              AppImages.pattern,
              fit: BoxFit.cover,
              opacity: const AlwaysStoppedAnimation(.5),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  14.ph,
                  SizedBox(height: 140, child: Image.asset(AppImages.logo)),
                  const Center(
                    child: GradientText('FoodNinja',
                        style: TextStyle(
                          fontFamily: "Viga",
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                        gradient: AppColors.gradient),
                  ),
                  const Text(
                    "Deliever Favorite Food",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  60.ph,
                  const Text(
                    "Login To Your Account",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  40.ph,
                  const AppTextField(hintText: "Email"),
                  12.ph,
                  const AppTextField(hintText: "Password"),
                  20.ph,
                  const Text(
                    "Or Continue With",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  20.ph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialButton(
                        color: AppColors.white,
                        borderColor: AppColors.c_F4F4F4,
                        width: MediaQuery.of(context).size.width / 2.5,
                        title: "Facebook",
                        logo: SvgPicture.asset(AppIcons.facebook),
                        onTap: () {},
                      ),
                      21.pw,
                      SocialButton(
                        color: AppColors.white,
                        borderColor: AppColors.c_F4F4F4,
                        width: MediaQuery.of(context).size.width / 2.5,
                        title: "Google",
                        logo: SvgPicture.asset(AppIcons.google),
                        onTap: () {},
                      ),
                    ],
                  ),
                  20.ph,
                  const Center(
                    child: GradientText(
                      "Forgot Your Password?",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      gradient: AppColors.gradient,
                    ),
                  ),
                  36.ph,
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.25),
                    child: GlobalButton(
                      title: "Login",
                      onTap: () {},
                      textColor: AppColors.white,
                      color: AppColors.gradient,
                    ),
                  ),
                  20.ph,
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.signupPage);
                      },
                      child: const GradientText(
                        "sign up",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        gradient: AppColors.gradient,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
