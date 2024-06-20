import 'package:advanced_test/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextStyles {
  static TextStyle font24black700weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font32blueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainblue);
  static TextStyle font32WhiteBold = TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsManager.white);
}
