import 'package:advanced_test/core/theming/colors.dart';
import 'package:advanced_test/core/theming/font_weight_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextStyles {
  static TextStyle font24black700weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelpers.semiBold,
  );
  static TextStyle font32blueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainblue);

  static TextStyle font32WhiteBold = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeightHelpers.bold,
      color: ColorsManager.white);

  static TextStyle font24blueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainblue);

  static TextStyle font14grey = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelpers.regular,
      color: ColorsManager.maingrey);

  static TextStyle font14lightgrayregular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelpers.regular,
      color: ColorsManager.lightgrey);

  static TextStyle font12mainblueregular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelpers.regular,
      color: ColorsManager.mainblue);

  static TextStyle font11mainblueregular = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelpers.regular,
      color: ColorsManager.mainblue);

  static TextStyle font16whitesemibold = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelpers.semiBold,
      color: ColorsManager.white);

  static TextStyle font11greyregular = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelpers.regular,
      color: ColorsManager.maingrey);

  static TextStyle font11darkblue = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelpers.regular,
      color: ColorsManager.darkblue);
}
