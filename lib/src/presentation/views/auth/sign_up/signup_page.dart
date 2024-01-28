import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/config/router/app_routes.dart';
import 'package:food_delivery/src/presentation/views/auth/sign_up/widgets/signup_text_field.dart';
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
  bool passwordVisible = false;

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
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: ListView(
                children: [
                  SizedBox(height: 130.h, child: Image.asset(AppImages.logo)),
                  Center(
                    child: GradientText('FoodNinja',
                        style: TextStyle(
                          fontFamily: "Viga",
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        gradient: AppColors.gradient),
                  ),
                  Text(
                    "Deliever Favorite Food",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  40.ph,
                  Text(
                    "Sign Up For Free",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  20.ph,
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
                    icon: AppIcons.lock,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  20.ph,
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: true,
                            onChanged: (value) {},
                            fillColor: MaterialStateColor.resolveWith(
                              (states) => AppColors.c_53e88b,
                            )),
                        8.pw,
                        Text(
                          "Keep Me Signed In",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        )
                      ]),

                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: GlobalButton(
                    title: "Create Account",
                    onTap: () {},
                    textColor: AppColors.white,
                    color: AppColors.gradient,
                  ),
                ),
                10.ph,
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.loginPage);
                    },
                    child: GradientText(
                      "log in",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      gradient: AppColors.gradient,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
