import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/src/config/router/app_routes.dart';
import 'package:food_delivery/src/presentation/views/auth/log_in/widgets/social_button.dart';
import 'package:food_delivery/src/presentation/views/auth/sign_up/widgets/signup_text_field.dart';
import 'package:food_delivery/src/presentation/widgets/app_text_field.dart';
import 'package:food_delivery/src/utils/resources/app_icons.dart';
import 'package:food_delivery/src/utils/resources/size_extension.dart';

import '../../../../utils/resources/app_colors.dart';
import '../../../../utils/resources/app_images.dart';
import '../../../../utils/resources/gradient_text.dart';
import '../../../widgets/global_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    "Sign Up For Free",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  40.ph,
                  const SignUpTextField(
                    hintText: "Name",
                    icon: AppIcons.profile,
                  ),
                  12.ph,
                  const SignUpTextField(
                    hintText: "Email",
                    icon: AppIcons.message,
                  ),
                  12.ph,
                  const SignUpTextField(
                    hintText: "Password",
                    icon: AppIcons.message,
                  ),

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
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.loginPage);
                      },
                      child: const GradientText(
                        "log in",
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
