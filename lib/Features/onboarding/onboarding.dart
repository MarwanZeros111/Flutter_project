import 'package:advanced_test/Features/onboarding/widget/doctor_image_text.dart';
import 'package:advanced_test/Features/onboarding/widget/get_statred_bottom.dart';
import 'package:advanced_test/Features/onboarding/widget/logo_and_name.dart';
import 'package:advanced_test/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            const LogoAndName(),
            const DoctorImageAndText(),
            Text(
              'Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.',
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorsManager.maingrey, fontSize: 10.sp),
            ),
            const SizedBox(
              height: 40,
            ),
            const GetStartedBottom()
          ],
        ),
      ),
    )));
  }
}
