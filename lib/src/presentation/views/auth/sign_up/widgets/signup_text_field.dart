import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:food_delivery/src/utils/resources/app_icons.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpTextField extends StatefulWidget {
  const SignUpTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.maxLines,
      this.keyboardType,
      this.textInputAction,
      required this.icon});

  final String hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String icon;

  @override
  State<SignUpTextField> createState() => _SignUpTextFieldState();
}

class _SignUpTextFieldState extends State<SignUpTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '(##) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return TextField(
      obscureText: obscureText,
      textInputAction: widget.textInputAction,
      inputFormatters:
          widget.keyboardType == TextInputType.phone ? [maskFormatter] : null,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword
            ? GestureDetector(
                onTap: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 17.h, bottom: 16.h, left: 16.w, right: 20.w),
                  child: SvgPicture.asset(
                      obscureText ? AppIcons.eye : AppIcons.show),
                ),
              )
            : null,
        prefixIcon: Padding(
          padding:
              EdgeInsets.only(top: 17.h, bottom: 16.h, left: 20.w, right: 16.w),
          child: SvgPicture.asset(widget.icon),
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: AppColors.textLabelColor)),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: AppColors.textLabelColor)),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: AppColors.textLabelColor)),
        disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: AppColors.textLabelColor)),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: AppColors.textLabelColor)),
        focusColor: AppColors.c_53e88b,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.c_53e88b,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: "Mulish",
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textHintColor,
        ),
        filled: true,
        fillColor: AppColors.c_F4F4F4,
      ),
      maxLines: widget.maxLines,
      keyboardType: widget.keyboardType,
      style: TextStyle(
        fontFamily: "Mulish",
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
      ),
      textAlign: TextAlign.left,
    );
  }
}
