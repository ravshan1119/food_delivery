import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.maxLines,
    this.keyboardType,
    this.textInputAction,
  });

  final String hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '(##) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return TextField(
      textInputAction: textInputAction,
      inputFormatters:
          keyboardType == TextInputType.phone ? [maskFormatter] : null,
      controller: controller,
      decoration: InputDecoration(
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
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: "Inter",
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textHintColor,
        ),
        prefixIcon: keyboardType == TextInputType.phone
            ? Padding(
                padding: EdgeInsets.all(12.w),
                child: Text(
                  "+998",
                  style: TextStyle(
                    fontFamily: "Mulish",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                ),
              )
            : null,
        filled: true,
        fillColor: AppColors.c_F4F4F4,
      ),
      maxLines: maxLines,
      keyboardType: keyboardType,
      style: TextStyle(
        fontFamily: "Inter",
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
      ),
      textAlign: TextAlign.left,
    );
  }
}
