import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color textColor = Color(0xff09051c);
  static const Color textHintColor = Color(0xffC4C4C4);
  static const Color textLabelColor = Color(0xffC4C4C4);
  static const Color c_da6317 = Color(0xffda6317);
  static const Color c_FF7C32 = Color(0xffFF7C32);
  static const Color c_fead1d = Color(0xfffead1d);
  static const Color c_FBF4EB = Color(0xffFBF4EB);
  static const Color c_F4F4F4 = Color(0xffF4F4F4);
  static const Color c_53e88b = Color(0xff53e88b);
  static const Color c_E9FAF2 = Color(0xffE9FAF2);

  static const Gradient gradient = LinearGradient(
    colors: [Color(0xff50e58a), Color(0xff1bc249)],
    stops: [0.25, 0.75],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
