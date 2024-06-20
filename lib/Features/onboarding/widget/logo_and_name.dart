import 'package:advanced_test/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/Group.svg'),
        SizedBox(
          width: 7.w,
        ),
        Text('Docdoc', style: CustomTextStyles.font24black700weight)
      ],
    );
  }
}
