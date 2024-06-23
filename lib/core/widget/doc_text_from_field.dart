import 'package:advanced_test/core/theming/colors.dart';
import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocTextFormField extends StatelessWidget {
  const DocTextFormField(
      {super.key, required this.hinttext, this.suffixIcon, this.obscureText});
  final String hinttext;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h), //control space between word enter textfield
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorsManager.mainblue, width: 1.3),
              borderRadius: BorderRadius.circular(16)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorsManager.lightgrey, width: 1.3),
              borderRadius: BorderRadius.circular(16)),
          hintStyle: CustomTextStyles.font14lightgrayregular,
          hintText: hinttext,
          suffixIcon: suffixIcon,
          fillColor: ColorsManager.morelightgray,
          filled: true),
      obscureText: obscureText ?? false,
    );
  }
}