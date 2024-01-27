import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color textColor = Color(0xff09051c);
  static const Color textHintColor = Color(0xff3b3b3b);
  static const Color textLabelColor = Color(0xff828282);
  static const Color c_da6317 = Color(0xffda6317);
  static const Color c_FF7C32 = Color(0xffFF7C32);
  static const Color c_fead1d = Color(0xfffead1d);
  static const Color c_F4F4F4 = Color(0xffF4F4F4);

  static const Gradient gradient = LinearGradient(
    colors: [Color(0xff50e58a), Color(0xff1bc249)],
    stops: [0.25, 0.75],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
