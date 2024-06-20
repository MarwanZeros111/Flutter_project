import 'package:advanced_test/core/theming/colors.dart';
import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/material.dart';

class GetStartedBottom extends StatelessWidget {
  const GetStartedBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainblue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 52))),
      onPressed: () {},
      child: Text('Get Started', style: CustomTextStyles.font32WhiteBold),
    );
  }
}
